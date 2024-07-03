# find edge of portal
## add # to names
scoreboard players add east anp_distance 0
scoreboard players add south anp_distance 0
scoreboard players add west anp_distance 0
scoreboard players add north anp_distance 0
function anp:to_nether2/0-5 {positioning:"~1 ~ ~",direction:"east",antidirection:"west"}
function anp:to_nether2/0-5 {positioning:"~ ~ ~1",direction:"south",antidirection:"north"}
function anp:to_nether2/0-5 {positioning:"~-1 ~ ~",direction:"west",antidirection:"east"}
function anp:to_nether2/0-5 {positioning:"~ ~ ~-1",direction:"north",antidirection:"south"}
# if the distance comparison ever gets removed, use run return run, in the 'part 1' version in commits
# north and west hold priority:
execute unless score west anp_distance matches 0 run function anp:to_nether2/0-66 {positioning:"~1 ~ ~",direction:"west",antidirection:"east"}
execute unless score north anp_distance matches 0 run function anp:to_nether2/0-66 {positioning:"~ ~ ~1",direction:"north",antidirection:"south"}
execute unless score east anp_distance matches 0 run function anp:to_nether2/0-66 {positioning:"~-1 ~ ~",direction:"east",antidirection:"west"}
execute unless score south anp_distance matches 0 run function anp:to_nether2/0-66 {positioning:"~ ~ ~-1",direction:"south",antidirection:"north"}
