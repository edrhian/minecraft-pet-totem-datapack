#> Using Pet Totem
# Description:
#   - Executes the particle function when holding right click with the pet totem in hand
# Callers:
#   - pet_totem:advancement/using_pet_totem

advancement revoke @s only pet_totem:using_pet_totem
execute at @s positioned ^ ^ ^1 as @e[type=#pet_totem:tameable,limit=1,sort=nearest] run effect give @s glowing 1 0 true
execute at @s positioned ^ ^ ^2 anchored eyes run function pet_totem:particle
