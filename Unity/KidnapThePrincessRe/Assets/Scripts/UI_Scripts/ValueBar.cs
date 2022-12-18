using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Can be use for various bar, e.g., health, mana
public class ValueBar : MonoBehaviour
{
    private Slider _slider;

    // Start is called before the first frame update
    void Start()
    {
        _slider = GetComponent<Slider>();
    }

    #region Methods
    public void InitValue(int value)
    {
        _slider.maxValue = value;
        _slider.value = value;
    }

    public void SetValue(int value)
    {
        _slider.value = value;
    }
    #endregion
}
