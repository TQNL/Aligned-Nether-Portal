tellraw @a {"text": "Loaded Aligned Nether Portal","color": "#00FF00"}
scoreboard objectives add nether_portal_pos_per_8_X dummy
scoreboard objectives add nether_portal_pos_per_8_Z dummy
scoreboard objectives add nether_portal_math dummy
scoreboard objectives add nether_portal_pos_Y dummy
scoreboard objectives add nether_portal_clone_pos_X dummy
scoreboard objectives add nether_portal_clone_pos_Y dummy
scoreboard objectives add nether_portal_clone_pos_Z dummy
scoreboard players set #8 nether_portal_math 8
scoreboard objectives add vanilla_nether_portals_for_you trigger
