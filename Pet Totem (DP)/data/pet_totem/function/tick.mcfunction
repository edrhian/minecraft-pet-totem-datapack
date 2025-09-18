execute as @a at @s if score @s .pet_totem_check_pets matches 1.. run function pet_totem:check_pets

execute as @e[type=#pet_totem:tameable] at @s if score @s .pet_totem_particle_timer matches 0.. run function pet_totem:check_timer

execute as @e[type=#pet_totem:tameable] at @s if score @s .pet_totem_particle_timer matches ..0 run scoreboard players reset @s .pet_totem_particle_timer

