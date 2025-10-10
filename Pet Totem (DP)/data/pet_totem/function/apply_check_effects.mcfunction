#> Apply Check Effects
# Description:
#   - Gives a glowing effect and shows a particle above the pet
# Callers:
#   - pet_totem:_tick; As the pet entity

scoreboard players remove @s .pet_totem_particle_timer 1
effect give @s glowing 2 0 true
execute positioned ~ ~2 ~ run function pet_totem:particle
