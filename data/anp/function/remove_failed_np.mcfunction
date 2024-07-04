## delete the block displays in 'no' aswell
execute unless predicate {"condition":"minecraft:location_check","predicate":{"dimension":"minecraft:the_nether"}} run return 0
fill ~2 ~3 ~2 ~-2 ~-2 ~-2 air replace obsidian

# fill in 3rd layer
clone ~-3 ~-2 ~3 ~2 ~3 ~3 ~-3 ~-2 ~2 filtered #anp:common_nether_blocks
clone ~-4 ~-2 ~-3 ~-4 ~3 ~2 ~-3 ~-2 ~-3 filtered #anp:common_nether_blocks
clone ~-3 ~-2 ~-4 ~2 ~3 ~-4 ~-3 ~-2 ~-3 filtered #anp:common_nether_blocks
clone ~3 ~-2 ~-3 ~3 ~3 ~2 ~2 ~-2 ~-3 filtered #anp:common_nether_blocks

# fill in 2nd layer
clone ~-2 ~-2 ~2 ~1 ~3 ~2 ~-2 ~-2 ~1 filtered #anp:common_nether_blocks
clone ~-3 ~-2 ~-2 ~-3 ~3 ~1 ~-2 ~-2 ~-2 filtered #anp:common_nether_blocks
clone ~-2 ~-2 ~-3 ~1 ~3 ~-3 ~-2 ~-2 ~-2 filtered #anp:common_nether_blocks
clone ~2 ~-2 ~-2 ~2 ~3 ~1 ~1 ~-2 ~-2 filtered #anp:common_nether_blocks

# fill in 3rd layer
clone ~-1 ~-2 ~1 ~0 ~3 ~1 ~-1 ~-2 ~0 filtered #anp:common_nether_blocks
clone ~-1 ~-2 ~-2 ~0 ~3 ~-2 ~-1 ~-2 ~-1 filtered #anp:common_nether_blocks
