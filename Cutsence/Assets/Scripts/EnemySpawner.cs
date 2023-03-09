using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using UnityEngine;
using static SpawnEnemyData;

[Serializable]
public class SpawnEnemyData
{
    public GameObject enemyPrefab;

    public Transform spawnpoint;

    public enum SpawnOn
    {
        Start, Event
    }
    public SpawnOn spawnOn;

    public float secondsBeforeSpawn;

    public bool chasePlayerOnSpawn;
}

public class EnemySpawner : MonoBehaviour
{

    public List<SpawnEnemyData> spawnEnemies;

    // Start is called before the first frame update
    void Start()
    {
        int index = spawnEnemies.FindIndex(x => x.spawnOn== SpawnOn.Start);
        if (index != -1)
        {
            StartCoroutine(SpawnCoroutine(SpawnOn.Start));
        }
    }

    // Update is called once per frame
    //void Update()
    //{
    //
    //}

    public void StartSpawn()
    {
        StartCoroutine(SpawnCoroutine(SpawnOn.Event));
    }

    private IEnumerator SpawnCoroutine(SpawnOn spawnOn)
    {
        foreach (SpawnEnemyData spawnEnemy in spawnEnemies)
        {
            if (spawnEnemy.spawnOn == spawnOn)
            {
                yield return new WaitForSeconds(spawnEnemy.secondsBeforeSpawn);

                GameObject enemyClone = Instantiate(spawnEnemy.enemyPrefab, spawnEnemy.spawnpoint.position, spawnEnemy.spawnpoint.rotation);

                if (transform.parent)
                {
                    enemyClone.transform.parent = transform.parent;
                }

                enemyClone.GetComponent<Enemy>().chasePlayerOnSpawned = spawnEnemy.chasePlayerOnSpawn;
            }
        }
    }
}
