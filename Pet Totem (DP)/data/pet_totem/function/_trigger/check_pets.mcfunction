#> Check Pets
# Description:
#    - Modifies .pet_totem_particle_timer scoreboard of near pets that has a pet totem
# Callers:
#    - pet_totem:_tick; by triggering scoreboard of the player
scoreboard players reset @s .pet_totem_check_pets
scoreboard players enable @s .pet_totem_check_pets

execute as @e[type=#pet_totem:tameable, distance=..10] if items entity @s weapon.mainhand totem_of_undying run scoreboard players set @s .pet_totem_particle_timer 200
