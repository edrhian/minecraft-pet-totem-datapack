#> Main Load
# Description:
#   - Creates the scoreboards, gives recipes and revokes trigger advancements
# Callers:
#   - minecraft:load

scoreboard objectives add .pet_totem_check_pets trigger
scoreboard objectives add .pet_totem_particle_timer dummy

scoreboard players reset @a .pet_totem_check_pets
scoreboard players enable @a .pet_totem_check_pets


recipe give @a pet_totem:pet_totem
advancement revoke @a only pet_totem:consumed_pet_totem
advancement revoke @a only pet_totem:using_pet_totem
