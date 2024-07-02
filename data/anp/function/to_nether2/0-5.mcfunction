# find edge of portal, in 4 directions, compare
## add # to the score name
$scoreboard players add $(direction) anp_distance 1
$execute if block $(positioning) obsidian run return run function anp:to_nether2/0-66 {antidirection:"$(antidirection)",direction:"$(direction)"}
$execute positioned $(positioning) if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"$(positioning)"}
