# find edge of portal, in 4 directions, compare
## add # to the score name
$execute if block $(positioning) nether_portal run scoreboard players add $(direction) anp_distance 1
$execute positioned $(positioning) if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"$(positioning)",antidirection:"$(antidirection)",direction:"$(direction)"}
