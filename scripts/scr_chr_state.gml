
/// Item Buff
if (item_index == 1)
{
    /// Double Gun
    attack_delayTime = attack_delayTimeMin / 2;
}
else
{
    attack_delayTime = attack_delayTimeMin;
}

/// Speed Skill Effect
if (alarm[6] != -1 && alarm[3] == -1)
{
    alarm[3] = 5; 
}

/// Damage Effect
if (chr_damageDelay)
{ 
    image_alpha = 0.4;
}
else
{
    image_alpha = 1;
}
