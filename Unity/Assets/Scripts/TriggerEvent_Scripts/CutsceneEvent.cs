using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Events;

public class CutsceneEvent : MonoBehaviour
{
    [SerializeField] private float cutsceneDuration;

    public UnityEvent OnCutsceneStart;

    [field : SerializeField]
    public bool DestroyAfterEnd { get; private set; }

    public UnityEvent OnCutsceneEnd;

    // Start is called before the first frame update
    void Start()
    {
        cutsceneDuration = (float)GetComponent<PlayableDirector>().duration;

        OnCutsceneStart?.Invoke();
        Invoke(nameof(CutsceneEndEvent), cutsceneDuration);
    }

    private void CutsceneEndEvent()
    {
        OnCutsceneEnd?.Invoke();
        if (DestroyAfterEnd)
        {
            Destroy(gameObject);
        }
    }
}
