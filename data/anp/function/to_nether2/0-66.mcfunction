# all 4 directions get tested anyway, the 2 that detected obsidian, pick the closest side
$tellraw @a [{"text":"$(direction): "},{"score":{"name":"$(direction)","objective":"anp_distance"}},{"text":"    $(antidirection): "},{"score":{"name":"$(antidirection)","objective":"anp_distance"}}]






#$execute if score $(direction) anp_distance < $(antidirection) anp_distance run data merge storage anp:nether_portal_pos {positioning:"$(positioning)",direction:"$(direction)"}
$execute if score $(direction) anp_distance < $(antidirection) anp_distance run return run function anp:to_nether2/0-75 {positioning:"$(positioning)",direction:"$(direction)"}
$execute if score $(direction) anp_distance > $(antidirection) anp_distance run return 0
#$execute unless score $(direction) anp_distance = $(antidirection) anp_distance run return 0
$execute if score $(direction) anp_distance = $(antidirection) anp_distance run scoreboard players add $(direction) anp_distance 1
##add # to the names
#$function anp:to_nether2/0-66 {antidirection:"$(antidirection)",direction:"$(direction)"}
$execute if score $(direction) anp_distance < $(antidirection) anp_distance run function anp:to_nether2/0-75 {direction:"$(direction)"}
