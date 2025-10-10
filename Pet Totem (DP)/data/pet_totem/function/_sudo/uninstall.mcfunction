#> Uninstall
# Description:
#   - Uninstall the datapack, this doesn't remove any totems from the pets
# Callers:
#   - Called by chat command

scoreboard objectives remove .pet_totem_check_pets
scoreboard objectives remove .pet_totem_particle_timer

datapack disable "file/Pet Totem (DP)"
