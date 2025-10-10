#> On Consumed Pet Totem
# Description:
#   - Tells what to execute after a player has used a pet totem by holding right click during 3 seconds
# Callers:
#   - pet_totem:advancement/consumed_pet_totem

advancement revoke @s only pet_totem:consumed_pet_totem
execute positioned ^ ^ ^1 run function pet_totem:search_pet
# pet_totem:equip_totem
