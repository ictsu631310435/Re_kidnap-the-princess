using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuManager : SceneLoader
{
    public string[] level;

    public GameObject skipTutorialPrompt;
    public GameObject mainMenu;

    [Header("Info")]
    public int passTutorialValue;
    public bool passTutorial;

    // Start is called before the first frame update
    void Start()
    {
        passTutorialValue = PlayerPrefs.GetInt("passTutorial" , 0);

        if (passTutorialValue <= 0)
        {
            passTutorial = false;
        }
        else
        {
            passTutorial = true;
        }
    }

    public void StartButton()
    {
        if (!passTutorial || !skipTutorialPrompt || !mainMenu)
        {
            LoadScene(level[0]);
        }
        else
        {
            mainMenu.SetActive(false);
            skipTutorialPrompt.SetActive(true);
        }
    }

    public void QuitApplication()
    {
        Application.Quit();
    }
}
