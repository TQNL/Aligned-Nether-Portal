# all 4 directions get tested anyway, the 2 that detected obsidian, pick the closest side
$execute if score $(direction) anp_distance < $(antidirection) anp_distance run return run function anp:to_nether2/0-75

# the 2 scores are apperently equal, pick 1
##add # to the names
scoreboard players add north anp_distance 1
scoreboard players add west anp_distance 1
$function anp:to_nether2/0-66 {antidirection:"$(antidirection)",direction:"$(direction)"}
