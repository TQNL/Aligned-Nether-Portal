$execute in the_nether positioned $(X) 0 $(Z) run forceload add ~-1 ~-1 ~1 ~1

$execute in the_nether if block $(X) $(Y) $(Z) nether_portal run return run forceload remove ~-1 ~-1 ~1 ~1

# make a way back through for players stuck in a bad spawn
tag @s add anp_first_time_generated
tellraw @s {"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/aligned-nether-portal"},"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to open description"}]},"text":"Letting you know that '/trigger toggle_vanilla_aligned_nether_portals_for_you' exists."}

# make portal
$execute in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/make with storage anp:nether_portal_pos

# guard rails
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~-1 nether_portal unless block ~1 ~-1 ~ #anp:common_nether_blocks run function anp:guard_rails/north
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~1 ~ ~ nether_portal unless block ~ ~-1 ~1 #anp:common_nether_blocks run function anp:guard_rails/east
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~1 nether_portal unless block ~-1 ~-1 ~ #anp:common_nether_blocks run function anp:guard_rails/south
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~-1 ~ ~ nether_portal unless block ~ ~-1 ~-1 #anp:common_nether_blocks run function anp:guard_rails/west

$execute in the_nether positioned $(X) 0 $(Z) run forceload remove ~-1 ~-1 ~1 ~1
