#> Search Pet
# Description:
#   - Checks if there are any pets that don't have any pet totem
# Callers:
#   - pet_totem:_advancement/consumed_pet_totem

execute if entity @e[type=#pet_totem:tameable,distance=..2] \
    as @e[type=#pet_totem:tameable,limit=1,sort=nearest] \
    unless predicate pet_totem:already_has_pet_totem \
    run return run function pet_totem:equip_totem

tellraw @p {"color":"aqua","text":"Pet not found or pet already has totem"}

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand with totem_of_undying[custom_data={pet_totem:1b},enchantment_glint_override=true,consumable={consume_seconds:3,animation:"block",sound:"block.beacon.ambient",has_consume_particles:false},custom_name={"bold":true,"color":"dark_purple","text":"Pet Totem"},lore=[{"color":"light_purple","text":"Keeps your loyal friend safe"}]] 1
