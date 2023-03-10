using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Events;

public class CutsceneEvent : MonoBehaviour
{
    [SerializeField] private float cutsceneDuration;

    public UnityEvent OnCutsceneStart;
    public UnityEvent OnCutsceneEnd;

    // Start is called before the first frame update
    void Start()
    {
        cutsceneDuration = (float)GetComponent<PlayableDirector>().duration;

        OnCutsceneStart?.Invoke();
        Invoke(nameof(CutsceneEndEvent), cutsceneDuration);
    }

    // Update is called once per frame
    //void Update()
    //{
    //    
    //}

    private void CutsceneEndEvent()
    {
        OnCutsceneEnd?.Invoke();
        Destroy(gameObject);
    }
}
