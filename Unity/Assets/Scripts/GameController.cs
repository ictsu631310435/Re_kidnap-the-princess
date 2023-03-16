using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class GameController : MonoBehaviour
{
    public GameObject pauseMenuPanel;

    public bool useTimer;

    public TMP_Text timeText;

    //
    public static GameController Instance { get; private set; }

    public enum GameState
    {
        Play, Paused, Over
    }

    [Header("Info")]
    public GameState gameState;

    public bool gamePaused;

    public float sceneTime;

    // Awake is called whe the script instance is being loaded
    void Awake()
    {
        Instance = this;

        Time.timeScale = 1;
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (useTimer)
        {
            sceneTime = Time.timeSinceLevelLoad;
            if (timeText)
            {
                timeText.text = FormatTime(sceneTime);
            }
        }
    }

    public string FormatTime(float time)
    {
        int minutes = Mathf.FloorToInt(time / 60);
        int seconds = Mathf.FloorToInt(time % 60);
        int milliseconds = Mathf.FloorToInt(time % 1 * 100);
        return string.Format("{0:00}:{1:00}:{2:00}", minutes, seconds, milliseconds);
    }

    public void SetPause(bool value)
    {
        gamePaused = value;

        if (gamePaused)
        {
            gameState = GameState.Paused;
            Time.timeScale = 0;
        }
        else
        {
            gameState = GameState.Play;
            Time.timeScale = 1;
        }

        if (pauseMenuPanel)
        {
            pauseMenuPanel.SetActive(value);
        }
    }

    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    public void ReloadCurrentScene()
    {
        string sceneName = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(sceneName);
    }
}
