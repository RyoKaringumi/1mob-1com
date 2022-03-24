#基本
#ゾンビh
execute as @e[type=minecraft:zombie] at @s store result entity @s Attributes[0].Base double 0.1 if entity @e[distance=0.5..20,type=!item,type=!player]
#スケルトン
execute at @e[type=skeleton] as @e[type=!#impact_projectiles,distance=..1] at @s if entity @e[type=arrow,distance=..3,nbt={inGround:false}] run tp @s @e[type=arrow,distance=..16,limit=1,sort=random,nbt={inGround:true}]
#クモh
execute as @e[type=minecraft:spider,nbt={FallDistance:0.0f,OnGround:0b}] at @s unless block ~ ~1 ~ air if block ~ ~ ~ air run setblock ~ ~1 ~ spawner{SpawnCount:4,SpawnRange:3,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:cobweb"},NoGravity:1b,Time:1,DropItem:0b}},SpawnPotentials:[{weight:10,data:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:cobweb"},NoGravity:1b,Time:1,DropItem:0b}}},{weight:5,data:{entity:{id:"minecraft:spider"}}},{weight:1,data:{entity:{id:"minecraft:cave_spider"}}},{weight:1,data:{entity:{id:"minecraft:spider",DeathLootTable:"minecraft:chests/village/village_temple",Health:1f,ActiveEffects:[{Id:7b,Amplifier:0b,Duration:1}]}}}]} replace
#クリーパー
execute at @e[type=creeper] at @e[type=item,distance=..10] if entity @e[type=!item,distance=..2] run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}
#エンダーマン
execute at @e[type=enderman,nbt={HurtTime:10s},nbt=!{AngerTime:0}] as @e[distance=..10] run spreadplayers ~ ~ 2 15 false @s
#スライム
execute as @e[type=slime,nbt={Size:0}] at @s run tp @s @e[distance=..1,limit=1,sort=nearest,type=!slime,type=!item]
#友好・中立
#スノーゴーレムh
execute at @e[type=minecraft:snow_golem] at @e[type=minecraft:snowball,distance=..20] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:snow[layers=8] replace minecraft:snow
#アイアンゴーレムh
#execute at @e[type=iron_golem] as @e[distance=..15,type=!villager] at @s if block ~ ~-1.3 ~ air run data modify entity @s FallDistance set value 27
execute as @e[type=minecraft:iron_golem,nbt={OnGround:1b}] at @s positioned ^ ^ ^3 positioned ~ ~5 ~ at @e[type=!minecraft:villager,type=!minecraft:iron_golem,distance=..5,nbt={OnGround:0b,HurtTime:0s}] if block ~ ~-1.5 ~ air positioned ^ ^ ^-2 if block ~ ~2 ~ air run tp ^ ^ ^
#村人h
execute at @e[nbt={Gossips:[{Type:"major_negative"}]}] if entity @p[distance=..10] run summon minecraft:lightning_bolt ~ ~3 ~
#行商人h
#effect give @e[type=minecraft:wandering_trader] minecraft:instant_health
execute as @e[type=minecraft:wandering_trader,nbt=!{Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:64b},buyB:{id:"minecraft:bundle",Count:1b,tag:{}},sell:{id:"minecraft:bundle",Count:1b,tag:{Items:[{id:"minecraft:emerald_block",Count:7b}]}}}]}}] run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:64b},buyB:{id:"minecraft:bundle",Count:1b,tag:{}},sell:{id:"minecraft:bundle",Count:1b,tag:{Items:[{id:"minecraft:emerald_block",Count:7b}]}}}
#ネコh
#execute as @e[type=cat] at @s run effect give @e[type=minecraft:witch,distance=..20,limit=1,sort=nearest] minecraft:health_boost 5 5
execute as @e[type=minecraft:cat] at @s if entity @e[type=minecraft:potion,distance=..20] unless entity @e[type=minecraft:ghast,distance=..80] run summon minecraft:ghast ~ ~50 ~
#ヤマネコh
#execute at @e[type=minecraft:ocelot] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:skulk_catalyst replace minecraft:melon
#オオカミh

#オウムh

#ミツバチ
execute at @e[type=bee,nbt={HasNectar:true},nbt=!{HivePos:{}}] positioned ~ ~1 ~1 unless block ~ ~1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ bee_nest{Bees:[{EntityData:{id:"bee",Age:-12000}}]}
#コウモリ
execute at @e[type=bat] as @e[type=!item,distance=..20,sort=furthest,limit=1] run effect give @s invisibility 1 0
#キツネ
execute at @e[type=fox,nbt={HandItems:[{id:"minecraft:sweet_berries",Count:1b},{}]}] if block ^ ^ ^-1 sweet_berry_bush[age=1] positioned ^ ^ ^1 unless entity @e[type=falling_block,distance=..2] unless block ~ ~ ~ sweet_berry_bush run summon falling_block ~ ~1 ~ {BlockState:{Name:"sweet_berry_bush",Properties:{age:"0"}},Time:1,DropItem:false}
#ウサギ
execute at @e[type=rabbit,nbt=!{RabbitType:99}] unless entity @e[type=rabbit,nbt={RabbitType:99},distance=..5] run summon rabbit ~ ~ ~ {Age:-600,RabbitType:99}
#パンダh
execute at @e[type=panda] as @e[type=item,nbt=!{Item:{id:"minecraft:bamboo"}},distance=..10] run data modify entity @s Item set value {id:"minecraft:bamboo",Count:1b}
#シロクマ
execute at @e[type=polar_bear,nbt={Age:0}] at @e[type=polar_bear,nbt=!{Age:0}] at @e[distance=..4] unless entity @e[type=polar_bear,distance=..3] run fill ~-1 ~-1 ~-1 ~1 ~4 ~1 ice
#ウシh

#ムーシュルーム
#execute at @e[type=minecraft:mooshroom] as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:red_mushroom",Count:10b}}] run data modify entity @s Item set value {id:mooshroom_spawn_egg,Count:1b,tag:{EntityTag:{id:"minecraft:spawner_minecart",SpawnCount:1,SpawnRange:1,Delay:0,MinSpawnDelay:1,MaxSpawnDelay:100,MaxNearbyEntities:1,RequiredPlayerRange:100,DisplayState:{Name:"minecraft:red_mushroom_block"},SpawnData:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:cow",Attributes:[{Name:generic.movement_speed,Base:1}]}]},SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:cow",Attributes:[{Name:generic.movement_speed,Base:1}]}]}},{Weight:1,Entity:{id:"minecraft:fireball",ExplosionPower:30b,power:[0.0,-1.0,0.0]}},{Weight:1,Entity:{id:"minecraft:item",Item:{id:"minecraft:enchanted_golden_apple",Count:5b}}},{Weight:1,Entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:skeleton",Passengers:[{id:"minecraft:rabbit"}],HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:red_mushroom',Count:1b}]}]}},{Weight:1,Entity:{id:"minecraft:tnt",Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:netherite_block"},Time:1}]}}]}}}
execute at @e[type=minecraft:mooshroom] as @e[type=item,distance=..20,nbt={Item:{id:"minecraft:red_mushroom",Count:10b}}] run data modify entity @s Item set value {id:mooshroom_spawn_egg,Count:1b,tag:{EntityTag:{id:"minecraft:spawner_minecart",SpawnCount:1,SpawnRange:1,Delay:0,MinSpawnDelay:1,MaxSpawnDelay:100,MaxNearbyEntities:1,RequiredPlayerRange:100,DisplayState:{Name:"minecraft:red_mushroom"},SpawnData:{entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:cow",Attributes:[{Name:generic.movement_speed,Base:1}]}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:cow",Attributes:[{Name:generic.movement_speed,Base:1}]}]}}},{weight:1,data:{entity:{id:"minecraft:fireball",ExplosionPower:30b,power:[0.0,-1.0,0.0]}}},{weight:1,data:{entity:{id:"minecraft:item",Item:{id:"minecraft:enchanted_golden_apple",Count:5b}}}},{weight:1,data:{entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:skeleton",Passengers:[{id:"minecraft:rabbit"}],HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:red_mushroom',Count:1b}]}]}}},{weight:1,data:{entity:{id:"minecraft:tnt",Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:netherite_block"},Time:1}]}}}]}}}
#ヒツジh

#ヤギh
execute at @e[type=minecraft:goat] positioned ^ ^ ^1 at @e[distance=..1,nbt=!{HurtTime:0s},type=!goat] run fill ~-0.5 ~-2 ~-0.5 ~0.5 ~-1 ~0.5 minecraft:powder_snow
#ニワトリ
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:egg"},Age:5999s}] run summon minecraft:chicken ~ ~ ~ {Age:-24000}
#ブタh
execute at @e[type=pig,sort=random,limit=1] at @e[type=cow,distance=..10,sort=random,limit=1] run summon pig ~ ~ ~ {Passengers:[{id:"minecraft:creeper",ignited:1b,Passengers:[{id:"minecraft:lightning_bolt"}]}]}
#ウマh

#ロバh

#ラバh

#ラマh

#スケルトンホース
#execute at @e[type=skeleton_horse,nbt={SkeletonTrap:true}] at @p[distance=..10] unless entity @e[type=spawner_minecart,distance=..10] run summon creeper ~ ~5 ~ {NoGravity:1b,ExplosionRadius:2b,Fuse:3,ignited:1b,Passengers:[{id:"minecraft:spawner_minecart",SpawnCount:7,SpawnRange:15,Delay:0,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:100,RequiredPlayerRange:10,SpawnData:{id:"minecraft:snowball",Passengers:[{id:"minecraft:skeleton",CanPickUpLoot:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}},{id:"minecraft:spawner_minecart",SpawnCount:2,SpawnRange:15,Delay:0,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:100,RequiredPlayerRange:10,SpawnData:{id:"minecraft:area_effect_cloud"},SpawnPotentials:[{Weight:0,Entity:{id:"minecraft:area_effect_cloud"}},{Weight:1,Entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:5s}]}}],Attributes:[{Name:generic.movement_speed,Base:1}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}},{Weight:1,Entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:spider",Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{}]}}]}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}},{Weight:1,Entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:polar_bear",Passengers:[{id:"minecraft:stray",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{}]}}]}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}}]}]}
execute at @e[type=skeleton_horse,nbt={SkeletonTrap:true}] at @p[distance=..10] unless entity @e[type=spawner_minecart,distance=..10] run summon creeper ~ ~5 ~ {NoGravity:1b,ExplosionRadius:2b,Fuse:3,ignited:1b,Passengers:[{id:"minecraft:spawner_minecart",SpawnCount:7,SpawnRange:15,Delay:0,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:100,RequiredPlayerRange:10,SpawnData:{entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:skeleton",CanPickUpLoot:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}}},{id:"minecraft:spawner_minecart",SpawnCount:2,SpawnRange:15,Delay:0,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:100,RequiredPlayerRange:10,SpawnData:{entity:{id:"minecraft:area_effect_cloud"}},SpawnPotentials:[{weight:0,data:{entity:{id:"minecraft:area_effect_cloud"}}},{weight:1,data:{entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:5s}]}}],Attributes:[{Name:generic.movement_speed,Base:1}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}}},{weight:1,data:{entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:spider",Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{}]}}]}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}}},{weight:1,data:{entity:{id:"minecraft:snowball",Passengers:[{id:"minecraft:polar_bear",Passengers:[{id:"minecraft:stray",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{}]}}]}]}],Item:{id:"minecraft:skeleton_skull",Count:1b}}}}]}]}
#ゾンビホースh
execute as @e[type=minecraft:zombie,nbt={Attributes:[{Base:1.0d}]}] at @s unless entity @e[type=minecraft:zombie_horse,distance=..15] run summon zombie_horse ~ ~ ~ {Tags:["enemy"],Passengers:[{id:"minecraft:zombie",CanPickUpLoot:1b,HandItems:[{id:"minecraft:wooden_axe",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],Attributes:[{Name:generic.armor,Base:25}]}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:17408},Enchantments:[{id:"minecraft:thorns",lvl:1s},{id:"minecraft:frost_walker",lvl:1s},{id:"minecraft:soul_speed",lvl:1s}]}},{},{},{}],ActiveEffects:[{Id:8b,Amplifier:1b,Duration:99999,ShowParticles:0b},{Id:17b,Amplifier:0b,Duration:99999,ShowParticles:0b}]}
#イルカh

#カメ
execute at @e[type=!turtle,type=!item] if block ~ ~ ~ turtle_egg positioned ~ ~40 ~-40 unless entity @e[type=fireball,distance=..20] run summon fireball ~ ~ ~ {Item:{id:"turtle_egg",Count:1b},power:[0.0,-1.0,1.0]}
#フグ
execute at @e[type=pufferfish] if entity @e[type=minecraft:elder_guardian] unless entity @e[type=minecraft:guardian,distance=..20] run summon minecraft:guardian
#熱帯魚
execute at @e[type=tropical_fish] as @e[nbt={SelectedItem:{id:"minecraft:water_bucket"}},distance=..10] run item replace entity @s weapon.mainhand with tropical_fish_bucket 1
#サケh
execute at @e[type=salmon] unless entity @e[type=area_effect_cloud,distance=..5] run summon area_effect_cloud ~ ~ ~ {Radius:6f,RadiusPerTick:-0.03f,Duration:200,Effects:[{Id:5b,Amplifier:0b,Duration:200},{Id:9b,Amplifier:0b,Duration:200}]}
#タラh

#ウーパールーパーh

#イカ
execute at @e[type=squid] positioned ~-10 ~ ~-10 at @e[type=boat,dx=20,dy=100,dz=20] if block ~ ~-1 ~ water run fill ~-1 ~ ~-1 ~1 ~1 ~1 water[level=9] keep
#ヒカリイカ
execute at @e[type=glow_squid] as @e[distance=..10] at @s anchored eyes run setblock ^ ^1 ^ water[level=9] keep
#ストライダー
execute at @e[type=strider] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 lava replace lava
#上位
#村人ゾンビh
execute at @e[type=minecraft:zombie_villager,nbt={ActiveEffects:[{Duration:4800}]}] run summon tnt
#ドラウンド
execute at @e[type=minecraft:trident,nbt={life:1s,pickup:0b}] run summon husk ~ ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b},{}]}
#ハスク
#execute at @e[type=husk] at @e[distance=..10,type=!item] if block ~ ~-1 ~ sand unless entity @e[type=area_effect_cloud,distance=..1] run summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:5,Radius:1f,Duration:6,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute at @e[type=husk,sort=random,limit=1] at @e[distance=..10,type=!item] if block ~ ~-1 ~ sand unless entity @e[type=area_effect_cloud,distance=..1] run summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:5,Radius:1f,Duration:6,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
#ジャイアントh
execute at @a positioned ~-60 -64 ~-60 as @e[dx=121,dy=74,dz=121,nbt={OnGround:1b},limit=5,sort=random] at @s positioned ~ ~2 ~ if block ~3 ~ ~3 minecraft:air if block ~-3 ~ ~-3 minecraft:air if block ~3 ~12 ~-3 minecraft:air if block ~-3 ~12 ~3 minecraft:air unless entity @e[type=minecraft:giant,distance=..30] unless entity @p[distance=..20] run summon giant ~ ~ ~ {Passengers:[{id:"minecraft:skeleton",Health:5f,HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}],Attributes:[{Name:generic.follow_range,Base:80}]},{id:"minecraft:skeleton",Health:5f,HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:zombie_head',Count:1b}],Attributes:[{Name:generic.follow_range,Base:80}]},{id:"minecraft:skeleton",Health:5f,HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:zombie_head',Count:1b}],Attributes:[{Name:generic.follow_range,Base:80}]},{id:"minecraft:skeleton",Health:5f,HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:zombie_head',Count:1b}],Attributes:[{Name:generic.follow_range,Base:80}]},{id:"minecraft:skeleton",Health:5f,HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'minecraft:zombie_head',Count:1b}],Attributes:[{Name:generic.follow_range,Base:80}]}]}
#ストレイ
execute at @e[type=stray] at @e[distance=..20,type=arrow,nbt={inGround:true}] if block ~ ~ ~ snow unless entity @e[type=area_effect_cloud,distance=..1] run summon area_effect_cloud ~ ~ ~ {Particle:"soul_fire_flame",ReapplicationDelay:0,Radius:1f,RadiusPerTick:0.005f,RadiusOnUse:0.01f,Duration:1200,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
#ウィザースケルトンh
execute as @e[type=minecraft:wither_skeleton] at @s if entity @e[nbt={HurtTime:10s},distance=..20] run data modify entity @s HandItems[0] set from entity @p SelectedItem
#洞窟グモh
#execute as @e[nbt={ActiveEffects:[{Duration:1},{Id:19b}]}] at @s if entity @s[y=-64,dy=94] at @s run setblock ~ ~ ~ spawner{Delay:0,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,Passengers:[{id:"minecraft:cave_spider",Health:2f}]}}} destroy
execute as @e[nbt={ActiveEffects:[{Duration:1},{Id:19b}]}] at @s if entity @s[y=-64,dy=94] at @s run summon spawner_minecart ~ ~ ~ {Delay:0,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,Passengers:[{id:"minecraft:cave_spider",Health:2f}]}}}
#マグマキューブ
execute as @e[type=magma_cube,nbt={Size:0}] at @s run tp @s @e[distance=..2,limit=1,sort=furthest,type=!magma_cube,type=!item,type=!item,type=!experience_orb]
#強敵
#ファントムh
execute at @e[type=minecraft:phantom,tag=!dragon_eye,nbt={HurtTime:5s},nbt={Fire:-1s},tag=!phantom_shadow] run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_signal_smoke",Radius:10f,Duration:10,Passengers:[{id:"minecraft:phantom",DeathLootTable:"minecraft:empty",Health:1f,Tags:["phantom_shadow"]}]}
#シルバーフィッシュ
#execute at @r[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},distance=..30] run fill ^-3 ^-3 ^-3 ^3 ^3 ^10 spawner{Delay:0,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:infested_cobblestone"},Time:1,Passengers:[{id:"minecraft:silverfish"}]}},SpawnPotentials:[{weight:6,data:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:infested_cobblestone"},Time:1,Passengers:[{id:"minecraft:silverfish"}]}}},{weight:3,data:{entity:{id:"minecraft:silverfish",Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:redstone_wire"},Time:1}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.movement_speed,Base:0.1}]}}},{weight:2,data:{entity:{id:"minecraft:witch",DeathLootTable:"minecraft:entities/zombie",Passengers:[{id:"minecraft:silverfish"}],ActiveEffects:[{Id:15b,Amplifier:0b,Duration:99999},{Id:17b,Amplifier:0b,Duration:99999},{Id:19b,Amplifier:0b,Duration:99999}]}}},{weight:1,data:{entity:{id:"minecraft:endermite"}}}]} replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:silverfish"}}}
#execute at @e[type=silverfish] if block ~ ~-1 ~ spawner run data modify block ~ ~-1 ~ SpawnPotentials set value [{weight:6,data:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:infested_cobblestone"},Time:1,Passengers:[{id:"minecraft:silverfish"}]}}},{weight:3,data:{entity:{id:"minecraft:silverfish",Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:redstone_wire"},Time:1}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.movement_speed,Base:0.1}]}}},{weight:2,data:{entity:{id:"minecraft:witch",DeathLootTable:"minecraft:entities/zombie",Passengers:[{id:"minecraft:silverfish"}],ActiveEffects:[{Id:15b,Amplifier:0b,Duration:99999},{Id:17b,Amplifier:0b,Duration:99999},{Id:19b,Amplifier:0b,Duration:99999}]}}},{weight:1,data:{entity:{id:"minecraft:endermite"}}}]
execute at @e[type=!item] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ infested_stone_bricks unless entity @e[type=area_effect_cloud,distance=..1] run summon area_effect_cloud ~ ~ ~ {Particle:"enchant",Radius:0.5f,Duration:20,Effects:[{Id:4b,Amplifier:0b,Duration:300},{Id:19b,Amplifier:0b,Duration:300}]}
#エンダーマイトh

#ピグリンh
execute at @e[type=minecraft:piglin] positioned ^ ^-1 ^0.5 if block ^ ^1 ^ air run setblock ~ ~ ~ minecraft:blackstone keep
#ピグリンブルート
execute at @e[type=minecraft:piglin_brute] positioned ^ ^ ^1 as @e[type=!minecraft:piglin_brute,type=!minecraft:piglin,distance=..0.5,nbt=!{HurtTime:0s}] at @s in minecraft:overworld run tp @s ~ ~ ~
#ゾンビピグリンh
execute at @e[type=minecraft:zombified_piglin] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:crimson_nylium replace #minecraft:bamboo_plantable_on
#ホグリンh

#ゾグリンh

#ブレイズ
execute at @e[type=blaze,tag=!dragon_eye] at @e[type=small_fireball,distance=..30] as @e[distance=..2,nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}},nbt=!{SelectedItem:{id:"minecraft:snowball"}}] run item replace entity @s weapon.mainhand with baked_potato 1
#ガストh
#execute at @e[type=ghast] run kill @e[distance=..10,type=!fireball,type=!wither,type=!ghast,type=!enderman,type=!skeleton,type=!wither_skeleton,type=!blaze,type=!magma_cube,type=!hoglin,type=!piglin,type=!piglin_brute,type=!zombified_piglin,type=!strider]
execute as @e[type=minecraft:ghast] at @s positioned as @e[type=minecraft:fireball,distance=5..100] positioned ^ ^ ^15 run summon tnt
#シュルカーh
execute at @e[type=!shulker,type=!end_crystal] at @e[type=shulker,tag=!rider,distance=1..2] run setblock ~ ~ ~ purple_stained_glass
#略奪
#ヴィンディケーター
execute at @e[type=vindicator] at @e[type=ravager,distance=..2] run fill ~-3 ~1 ~-3 ~3 ~4 ~3 air destroy
#ピリジャーh
#execute as @e[type=minecraft:pillager,nbt={HandItems:[{tag:{Charged:1b}}]}] at @s if entity @e[type=!#minecraft:raiders,distance=..30] run data modify entity @e[type=minecraft:ravager,distance=..2,limit=1,sort=nearest,nbt={RoarTick:0}] StunTick set value 40
#execute as @e[type=minecraft:pillager,nbt={HandItems:[{tag:{Charged:1b}}]}] at @s if entity @e[type=!#minecraft:raiders,distance=..30] as @e[type=minecraft:ravager,distance=..2] at @s at @e[type=!#minecraft:raiders,sort=nearest,limit=3] run summon minecraft:lightning_bolt
execute as @e[type=minecraft:pillager] at @s if entity @e[type=arrow,distance=..3] run effect give @e[type=ravager,distance=..2] speed 1 2
#エヴォーカーh
#execute at @e[type=evoker] at @e[type=#minecraft:raiders,distance=..100] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:200,MaxSpawnDelay:400,MaxNearbyEntities:15,RequiredPlayerRange:30,SpawnData:{entity:{id:"minecraft:vex",CanPickUpLoot:1b,Health:5f,LifeTicks:300,Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:11184810,CustomPotionEffects:[{Id:31b,Amplifier:0b,Duration:200}]}}}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}},SpawnPotentials:[{weight:16,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:vex",CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:11184810,CustomPotionEffects:[{Id:31b,Amplifier:0b,Duration:200}]}}}]}}},{weight:8,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:vindicator",CanPickUpLoot:1b,Johnny:1b,CanJoinRaid:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}}},{weight:8,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:pillager",HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}}},{weight:4,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:illusioner",CanPickUpLoot:1b,CanJoinRaid:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}]}}},{weight:4,data:{entity:{id:"minecraft:spider"}}}]} replace fire
execute at @e[type=minecraft:evoker] at @e[type=#minecraft:raiders,distance=..50] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:polished_deepslate replace #minecraft:planks
#ヴェックスh
execute at @e[type=vex] at @e[type=minecraft:evoker_fangs,nbt={Warmup:-15},distance=..60] run fill ~ ~-1 ~ ~ ~2 ~ minecraft:dark_oak_log keep
#execute at @e[type=vex] unless entity @e[type=bat,distance=..10] run summon bat
#ラヴェジャー
execute at @e[type=ravager,nbt={AttackTick:9}] run summon creeper ^ ^ ^3 {ExplosionRadius:1b,Fuse:2,ignited:1b}
#ウィッチh
#execute as @e[type=minecraft:witch] at @s at @e[type=minecraft:potion,distance=..10] unless entity @e[type=minecraft:falling_block,distance=..1] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:500,DropItem:0b,Motion:[0.0,0.0,0.0]}
execute as @e[type=minecraft:witch] at @s if entity @e[type=cat,distance=..30] unless entity @e[type=minecraft:illusioner,distance=..40] run summon illusioner ~ ~ ~ {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{}]}
#イリュージョナーh
#execute at @e[type=illusioner,nbt={SpellTicks:1}] at @e[type=arrow,nbt={inGround:true},distance=..30,limit=100] unless block ~ ~-3 ~ air run summon item ~ ~-3 ~ {Age:5980,Item:{id:"totem_of_undying",Count:1b},Passengers:[{id:"zombie_villager",Health:4f,ArmorItems:[{id:"coarse_dirt",Count:1b},{},{id:"ancient_debris",Count:1b},{}],ArmorDropChances:[0.700F,0.085F,0.010F,0.085F]}]}
execute as @e[type=minecraft:illusioner,nbt={ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1200}]},tag=!illusion] at @s run summon illusioner ~ ~ ~ {Health:4f,Tags:["illusion"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ActiveEffects:[{Id:25b,Amplifier:0b,Duration:10}]}

#ボス
#ガーディアン
execute at @e[type=guardian,nbt={Motion:[0.0,0.0,0.0]},tag=!dragon] as @e[type=!elder_guardian,type=!guardian,tag=!guardian,distance=..5] at @s facing entity @e[type=guardian,limit=1,sort=nearest] eyes positioned ^ ^ ^-0.1 rotated as @s run tp ~ ~ ~
#エルダーガーディアンh
execute as @e[type=elder_guardian,nbt={Motion:[0.0,0.0,0.0]}] at @s unless entity @e[type=guardian,nbt={ActiveEffects:[{Id:14b}]},distance=..10] run summon guardian ~ ~ ~ {Passengers:[{id:"minecraft:area_effect_cloud",Particle:"dripping_water",Radius:0f,RadiusPerTick:0.5f,Duration:10,WaitTime:50,Tags:["guardian"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"bubble_pop",Radius:5f,Duration:20,WaitTime:60,Tags:["guardian"],Effects:[{Id:4b,Amplifier:2b,Duration:1200},{Id:9b,Amplifier:0b,Duration:100},{Id:17b,Amplifier:1b,Duration:600},{Id:18b,Amplifier:0b,Duration:1200},{Id:26b,Amplifier:5b,Duration:6000},{Id:27b,Amplifier:2b,Duration:12000}]}],Effects:[{Id:4b,Amplifier:2b,Duration:1200},{Id:9b,Amplifier:0b,Duration:100},{Id:17b,Amplifier:1b,Duration:600},{Id:18b,Amplifier:0b,Duration:1200},{Id:26b,Amplifier:5b,Duration:6000},{Id:27b,Amplifier:2b,Duration:12000}]}],ArmorItems:[{},{},{id:"minecraft:trident",Count:1b,tag:{RepairCost:100,Damage:248,Enchantments:[{id:"minecraft:riptide",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-50,Operation:0,UUID:[I;230120623,874266810,-1727997755,159234906]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:-50,Operation:0,UUID:[I;-709362424,504644881,-1810948942,429833420]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:50,Operation:0,UUID:[I;135324384,-1814936450,-1167121282,-1061838471]}]}},{}],ArmorDropChances:[0.085F,0.085F,0.050F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200}]}
#ウィザー
execute at @e[type=wither] unless block ~ ~-1 ~ air unless entity @e[type=spawner_minecart,distance=..90] at @e[limit=3,sort=random,distance=..60] unless entity @e[type=spawner_minecart,distance=..30] run summon giant ~ ~ ~ {Passengers:[{id:"minecraft:fireball",ExplosionPower:10b,power:[0.0,-0.1,0.0],Passengers:[{id:"minecraft:spawner_minecart",SpawnCount:1,SpawnRange:30,Delay:0,MinSpawnDelay:600,MaxSpawnDelay:6000,MaxNearbyEntities:30,RequiredPlayerRange:90,Passengers:[{id:"minecraft:fireball",ExplosionPower:10b,power:[0.0,-0.1,0.0],Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}],SpawnData:{entity:{id:"minecraft:spawner_minecart",SpawnCount:30,SpawnRange:9,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:200,RequiredPlayerRange:90,Passengers:[{id:"minecraft:lightning_bolt"}],SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spawner"},TileEntityData:{SpawnCount:3,SpawnRange:3,Delay:0,MinSpawnDelay:300,MaxSpawnDelay:3000,MaxNearbyEntities:9,RequiredPlayerRange:30,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Time:1}},SpawnPotentials:[{Weight:1,data:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Time:1}}},{Weight:1,data:{entity:{id:"minecraft:spawner_minecart",SpawnCount:3,SpawnRange:9,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:30,RequiredPlayerRange:90,Passengers:[{id:"minecraft:lightning_bolt"}],SpawnData:{entity:{id:"minecraft:spider",Passengers:[{id:"minecraft:wither_skeleton",HandItems:[{id:'netherite_sword',Count:1b},{id:'minecraft:shield',Count:1b,tag:{BlockEntityTag:{Base:14,Patterns:[{Pattern:bri,Color:7},{Pattern:sku,Color:15},{Pattern:gru,Color:15},{Pattern:gra,Color:15}]}}}],ArmorItems:[{id:'minecraft:netherite_boots',Count:1b},{id:'minecraft:netherite_leggings',Count:1b},{id:'minecraft:netherite_chestplate',Count:1b},{id:'minecraft:netherite_helmet',Count:1b}]}]}}}}},{Weight:1,data:{entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:skeleton_horse",SkeletonTrap:1b,Passengers:[{id:"minecraft:stray",HandItems:[{id:'minecraft:bow',Count:1b},{}],ArmorItems:[{},{},{},{id:'iron_helmet',Count:1b,tag:{Enchantments:[{id:'protection',lvl:1s}]}}]}]}]}}}]},Time:1}}}}},{id:"minecraft:spawner_minecart",SpawnCount:3,SpawnRange:60,MinSpawnDelay:60,MaxSpawnDelay:600,MaxNearbyEntities:30,RequiredPlayerRange:90,SpawnData:{entity:{id:"minecraft:wither_skull",power:[0.0,-0.1,0.0],Passengers:[{id:"minecraft:creeper",ExplosionRadius:3b,Fuse:1000,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000}],Attributes:[{Name:generic.knockback_resistance,Base:1}]},{id:"minecraft:area_effect_cloud",Particle:"large_smoke",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.006f,Duration:500,Effects:[{Id:2b,Amplifier:0b,Duration:60}]},{id:"minecraft:area_effect_cloud",Particle:"soul_fire_flame",ReapplicationDelay:20,Radius:4f,RadiusPerTick:0.006f,Duration:500,WaitTime:500,Effects:[{Id:2b,Amplifier:1b,Duration:120},{Id:7b,Amplifier:0b,Duration:1}]},{id:"minecraft:area_effect_cloud",Particle:"explosion",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.3f,Duration:20,WaitTime:980,Effects:[{Id:31b,Amplifier:4b,Duration:72000}]},{id:"minecraft:area_effect_cloud",Particle:"soul",ReapplicationDelay:20,Radius:7f,RadiusPerTick:-0.03f,Duration:200,WaitTime:1000,Effects:[{Id:2b,Amplifier:5b,Duration:180},{Id:8b,Amplifier:199b,Duration:180},{Id:20b,Amplifier:0b,Duration:180}]}]}}},{id:"minecraft:spawner_minecart",SpawnCount:3,SpawnRange:90,MinSpawnDelay:6,MaxSpawnDelay:60,MaxNearbyEntities:30,RequiredPlayerRange:90,SpawnData:{entity:{id:"minecraft:spawner_minecart",SpawnCount:30,SpawnRange:9,MinSpawnDelay:0,MaxSpawnDelay:0,MaxNearbyEntities:200,RequiredPlayerRange:90,Passengers:[{id:"minecraft:lightning_bolt"}],SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:soul_sand"},Time:1}}}}}],Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:72000}]}
#ドラゴン
execute at @e[type=ender_dragon] at @e[type=end_crystal,distance=..100] positioned ~ ~-4 ~ run setblock ~ ~ ~ repeating_command_block{Command:"execute if entity @e[type=minecraft:ender_dragon,distance=..100] unless entity @e[type=minecraft:end_crystal,y=0,dx=0,dy=200,dz=0] unless entity @e[type=minecraft:spawner_minecart,y=0,dx=0,dy=200,dz=0] run summon falling_block ~ ~4 ~ {BlockState:{Name:\"minecraft:fire\"},Time:1,Passengers:[{id:\"minecraft:blaze\",ActiveEffects:[{Id:11b,Amplifier:4b,Duration:600}],Passengers:[{id:\"minecraft:spawner_minecart\",SpawnCount:10,SpawnRange:10,Delay:0,MinSpawnDelay:20,MaxSpawnDelay:200,MaxNearbyEntities:100,RequiredPlayerRange:100,SpawnData:{entity:{id:\"minecraft:phantom\",Size:20,Passengers:[{id:\"minecraft:enderman\",Passengers:[{id:\"minecraft:guardian\",Silent:true,UUID:[I;0,0,0,0],Tags:[\"dragon\"],DeathLootTable:\"a\",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.follow_range,Base:100}]}]}]},SpawnPotentials:[{Weight:1,Entity:{id:\"minecraft:phantom\",Size:20,Passengers:[{id:\"minecraft:enderman\",Passengers:[{id:\"minecraft:guardian\",Silent:true,UUID:[I;0,0,0,0],Tags:[\"dragon\"],DeathLootTable:\"a\",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.follow_range,Base:100}]}]}]}},{Weight:1,Entity:{id:\"minecraft:shulker_bullet\",Target:[I;0,0,0,0],Steps:1,Passengers:[{id:\"minecraft:dragon_fireball\",power:[0.0,-10.0,0.0]}]}}]}}],Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0}]}]}",auto:1b} replace

#おまけ
#summon愛くるしいウサギ
#summon rabbit ~ ~ ~ {CustomName:'{"text":"愛くるしいウサギ","color":"light_purple"}',CustomNameVisible:true,Glowing:true,Attributes:[{Name:generic.movement_speed,Base:0.5,Passengers:[{id:"guardian",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:72000}]}]}]}

#setblock ~ ~1 ~ minecraft:spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:200,MaxSpawnDelay:400,MaxNearbyEntities:15,RequiredPlayerRange:30,SpawnData:{entity:{id:"minecraft:vex",CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:11184810,CustomPotionEffects:[{Id:31b,Amplifier:0b,Duration:200}]}}}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}},SpawnPotentials:[{weight:16,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:vex",CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:11184810,CustomPotionEffects:[{Id:31b,Amplifier:0b,Duration:200}]}}}]}}},{weight:8,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:vindicator",CanPickUpLoot:1b,Johnny:1b,CanJoinRaid:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}}},{weight:8,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:pillager",HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}}},{weight:4,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:10}},entity:{id:"minecraft:illusioner",CanPickUpLoot:1b,CanJoinRaid:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}]}}},{weight:4,data:{entity:{id:"minecraft:spider"}}}]}
