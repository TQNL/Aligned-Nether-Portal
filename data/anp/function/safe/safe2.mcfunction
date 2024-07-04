# kill the nether-side portal
$execute as @a[nbt={UUID:$(Owner)}] if entity @s[tag=anp_first_time_generated] at @s run function anp:remove_failed_np

# tp back to overworld (catalysts is the tag, given in anp:to_nether2/4) (cloud was made in anp:to_nether2/1 with /function anp:safe/safe with entity @s)
$execute as @a[nbt={UUID:$(Owner)}] if entity @s[tag=anp_first_time_generated] run function anp:safe/safe3
