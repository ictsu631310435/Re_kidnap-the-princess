using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New_CharaStats", menuName = "ScriptableObject/CharacterStatistics")]
public class CharacterStatistics : ScriptableObject
{
    [Tooltip("Move speed of the character in m/s")]
    public float moveSpeed;

    [Tooltip("Attack point of the character")]
    public int attack;
}
