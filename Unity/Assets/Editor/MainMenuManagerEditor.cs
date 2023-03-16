using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;


[CustomEditor(typeof(MainMenuManager))]
public class MainMenuManagerEditor : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        if (GUILayout.Button("Delete All PlayerPrefs"))
        {
            PlayerPrefs.DeleteAll();
        }
    }
}
