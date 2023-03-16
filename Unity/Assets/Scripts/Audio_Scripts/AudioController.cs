using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.UIElements;

public class AudioController : MonoBehaviour
{
    public Sound[] sounds;

    private int currentSoundIndex;

    // Awake is called when the script intance is being loaded
    void Awake()
    {
        foreach (Sound s in sounds)
        {
            if (!s.addAudioSource)
            {
                continue;
            }

            s.source = gameObject.AddComponent<AudioSource>();
            
            s.source.clip = s.audioClip;
            s.source.outputAudioMixerGroup = s.mixerGroup;
            s.source.loop = s.loop;
            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
        }

        currentSoundIndex = 0;
    }

    public void Play(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);

        s.source.Play();
    }

    public void PlayClipAtPoint(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);

        //AudioSource.PlayClipAtPoint(s.audioClip, transform.position);

        GameObject oneShotAudio = new GameObject("One shot audio");
        oneShotAudio.transform.position = transform.position;
        AudioSource audioSource = (AudioSource)oneShotAudio.AddComponent(typeof(AudioSource));
        audioSource.clip = s.audioClip;
        audioSource.outputAudioMixerGroup = s.mixerGroup;
        audioSource.spatialBlend = 1f;
        audioSource.volume = s.volume;
        audioSource.Play();
        Destroy(oneShotAudio, s.audioClip.length * ((Time.timeScale < 0.01f) ? 0.01f : Time.timeScale));
    }

    public void PlayFirstSound()
    {
        sounds[0].source.Play();
    }

    public void PlayNextSound()
    {
        sounds[currentSoundIndex].source.Stop();

        currentSoundIndex++;
        sounds[currentSoundIndex].source.Play();
    }
}
