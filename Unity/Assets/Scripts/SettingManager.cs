using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class SettingManager : MonoBehaviour
{
    public AudioMixer audioMixer;

    public Slider masterVolumeSlider;
    public Slider effectVolumeSlider;
    public Slider musicVolumeSlider;

    [Header("Info")]
    public float masterVolume;
    public float effectVolume;
    public float musicVolume;

    // Start is called before the first frame update
    void Start()
    {
        // Master Volume
        masterVolume = PlayerPrefs.GetFloat("masterVolume", 0);
        InitVolumeSlider(masterVolumeSlider, masterVolume);
        SetMasterVolume(masterVolume);

        // Effect Volume
        effectVolume = PlayerPrefs.GetFloat("effectVolume", 0);
        InitVolumeSlider(effectVolumeSlider, effectVolume);
        SetEffectVolume(effectVolume);

        // Music Volume
        musicVolume = PlayerPrefs.GetFloat("musicVolume", 0);
        InitVolumeSlider(musicVolumeSlider, musicVolume);
        SetMusicVolume(musicVolume);
    }

    private void  InitVolumeSlider(Slider slider, float value)
    {
        if (!slider)
        {
            return;
        }

        slider.minValue = -80.0f;
        slider.maxValue = 0.0f;
        slider.value = value;
    }

    public void SetMasterVolume(float value)
    {
        masterVolume = value;
        audioMixer.SetFloat("masterVolume", value);
        PlayerPrefs.SetFloat("masterVolume", value);
    }

    public void SetEffectVolume(float value)
    {
        effectVolume = value;
        audioMixer.SetFloat("effectVolume", value);
        PlayerPrefs.SetFloat("effectVolume", value);
    }

    public void SetMusicVolume(float value)
    {
        musicVolume = value;
        audioMixer.SetFloat("musicVolume", value);
        PlayerPrefs.SetFloat("musicVolume", value);
    }
}
