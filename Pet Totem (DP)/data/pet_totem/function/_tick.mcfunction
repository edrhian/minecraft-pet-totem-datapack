#> Tick Pet Totem
# Description:
#   - Handles who has triggered the check pets scoreboard
#   - Handles which pets should show the pet totem particle
# Callers:
#    - minecraft:tick

execute as @a at @s if score @s .pet_totem_check_pets matches 1.. run function pet_totem:_trigger/check_pets

execute as @e[type=#pet_totem:tameable] at @s if score @s .pet_totem_particle_timer matches 0.. run function pet_totem:apply_check_effects

execute as @e[type=#pet_totem:tameable] at @s if score @s .pet_totem_particle_timer matches ..0 run scoreboard players reset @s .pet_totem_particle_timer

