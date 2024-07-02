execute if entity @s[tag=vanilla_np] run tellraw @s {"text": "Nether portals now generate vanilla for you","color": "yellow"}
execute unless entity @s[tag=vanilla_np] run tellraw @s {"text": "Nether portals now generate alligned for you","color": "yellow"}
