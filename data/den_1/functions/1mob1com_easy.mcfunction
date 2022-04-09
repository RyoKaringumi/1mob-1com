#基本
#ゾンビ
execute at @e[type=zombie] run effect give @e[distance=..5] poison 3 0
#スケルトンe
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone"},Age:5999s}] run summon minecraft:skeleton
#クモ
execute at @e[type=spider] at @e[type=#impact_projectiles,distance=..16,nbt={inGround:false}] at @e[distance=..3,type=!#impact_projectiles,type=!item,type=!experience_orb] anchored eyes run fill ^ ^ ^-1 ^ ^-1 ^ cobweb keep
#クリーパーe
execute at @e[type=minecraft:creeper,tag=!time_bomb,nbt=!{Fire:-1s},nbt=!{Fire:0s}] unless entity @e[tag=time_bomb,distance=..15] run summon creeper ~ ~ ~ {Fire:1,powered:1b,ExplosionRadius:5b,Fuse:300,ignited:1b,Tags:["time_bomb"]}
#エンダーマンe
execute as @e[type=minecraft:enderman,nbt=!{AngerTime:0}] at @s run effect give @e[distance=..5] minecraft:blindness 2 0
#スライムe
execute at @e[type=minecraft:slime,nbt={OnGround:0b},nbt=!{FallDistance:0f}] unless block ~ ~-0.3 ~ air unless block ~ ~-0.3 ~ minecraft:cave_air unless block ~ ~-0.3 ~ water unless block ~ ~-0.3 ~ lava run summon area_effect_cloud ~ ~ ~ {Particle:"bubble_pop",Radius:0f,RadiusPerTick:0.5f,Duration:10,Effects:[{Id:25b,Amplifier:10b,Duration:5}]}
#友好・中立
#スノーゴーレム
execute at @e[type=snow_golem] at @e[type=snowball,distance=..5] as @e[type=!snow_golem,type=!polar_bear,type=!stray,nbt=!{VillagerData:{type:"minecraft:snow"}},nbt=!{Type:"snow"},distance=..2] run item replace entity @s armor.head with ice{AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:-0.5,Operation:2,UUID:[I;754064627,-1304345982,-2044253836,1119759208]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.5,Operation:2,UUID:[I;-1827194926,-970438675,-2038461094,-78379753]}]} 1
#アイアンゴーレム
execute at @e[type=iron_golem] as @e[distance=..15,type=!villager] at @s if block ~ ~-1.3 ~ air run data modify entity @s FallDistance set value 27
#execute as @e[type=minecraft:iron_golem,nbt={OnGround:1b}] at @s positioned ^ ^ ^3 positioned ~ ~5 ~ at @e[type=!minecraft:villager,type=!minecraft:iron_golem,distance=..5,nbt={OnGround:0b,HurtTime:0s}] if block ~ ~-1.5 ~ air positioned ^ ^ ^-2 if block ~ ~2 ~ air run tp ^ ^ ^
#村人
execute as @e[type=villager,nbt=!{ArmorItems:[{},{},{},{Count:1b}]}] run data modify entity @s ArmorItems set value [{},{},{},{id:"oak_fence",Count:1b}]
#行商人
execute at @e[type=wandering_trader] as @e[distance=..5,type=!#raiders,type=!vex,type=!villager,type=!wandering_trader,nbt=!{CanBreakDoors:0b},nbt=!{CanBreakDoors:1b}] at @s run data modify entity @s Leash set from entity @e[limit=1,sort=random,distance=..5] Leash
#ネコ
execute at @e[type=cat,nbt=!{InLove:0}] unless entity @e[nbt={ActiveEffects:[{Id:24b}]},distance=..20] as @e[type=!minecraft:player,type=!cat,type=!minecraft:ocelot,distance=..20,sort=random,limit=3] run effect give @s minecraft:glowing 1 0
#ヤマネコ
execute at @e[type=ocelot] as @e[type=creeper,distance=..20] run data modify entity @s ExplosionRadius set value 0b
#オオカミ
execute as @e[type=wolf] at @s run tp @e[type=item,distance=..2] @s
#オウム
effect give @e[nbt={ShoulderEntityLeft:{}}] levitation 10 254
#ミツバチe

#コウモリe
execute as @e[type=bat,nbt=!{Motion:[0.0,0.0,0.0]}] at @s run data modify entity @s BatFlags set value 1
#キツネe

#ウサギe

#パンダ
execute at @e[type=minecraft:panda] at @e[type=item,distance=..10,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bamboo"}}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ air unless entity @e[distance=..20,type=minecraft:falling_block] run summon area_effect_cloud ~ ~1 ~ {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:bamboo_sapling"},Time:1,DropItem:0b},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:pointed_dripstone",Properties:{vertical_direction:"up"}},Time:1,DropItem:0b}]}
#シロクマe

#ウシ
execute at @e[type=cow] run effect clear @e[distance=..2]
#ムーシュルームe
execute at @e[type=mooshroom] run effect give @e[distance=..2] regeneration 4 0
#ヒツジ
execute as @e[type=sheep,nbt=!{CustomName:'{"text":"jeb_"}'}] run data modify entity @s CustomName set value '{"text":"jeb_"}'
#ヤギ
execute as @e[type=goat,nbt={IsScreamingGoat:true},limit=1,sort=random] at @s unless entity @e[type=minecraft:goat,nbt={DeathLootTable:"minecraft:chests/stronghold_library"},distance=..10] run data modify entity @s DeathLootTable set value "minecraft:chests/stronghold_library"
#ニワトリe
execute as @e[type=chicken] run data modify entity @s ActiveEffects set value [{Id:8,Amplifier:1,Duration:20,ShowParticles:false},{Id:28,Amplifier:0,Duration:20,ShowParticles:false}]
#ブタ
execute as @e[type=pig,nbt={Saddle:1b},nbt=!{Health:10.0f,NoGravity:1b}] at @s run data modify entity @s NoGravity set value 1b
#ウマ
execute as @e[type=horse,nbt={OnGround:false,FallDistance:0f}] at @s if block ~ ~-1.5 ~ air run effect give @s speed 3 1
#ロバ
#execute at @e[type=donkey,nbt={OnGround:false,FallDistance:0f}] if block ~ ~-1.5 ~ air unless entity @e[type=falling_block,distance=..30] at @e[type=!item,distance=..20] run summon falling_block ~ ~20 ~ {BlockState:{Name:"minecraft:barrel"},TileEntityData:{Items:[{Slot:10b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}},{Slot:12b,id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:238}}},{Slot:14b,id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:238}}},{Slot:16b,id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8930304}}}]},Time:1,DropItem:false,HurtEntities:true,FallHurtMax:10}
execute at @e[type=donkey,nbt={OnGround:false,FallDistance:0f}] if block ~ ~-1.5 ~ air positioned ~ ~5 ~ unless entity @e[type=minecraft:villager,distance=..2] run summon villager ~ ~ ~ {Silent:1b,CustomName:'{"text":"Grumm"}',ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.movement_speed,Base:0.1}],VillagerData:{level:99,profession:"minecraft:fisherman",type:"minecraft:jungle"},Offers:{Recipes:[{rewardExp:1b,maxUses:1,buy:{id:"minecraft:raw_gold",Count:16b},buyB:{id:"minecraft:jukebox",Count:1b},sell:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"K!","bold":true}'},BlockEntityTag:{Items:[{Slot:0b,id:'minecraft:jungle_wood',Count:1b},{Slot:1b,id:'minecraft:jungle_wood',Count:1b},{Slot:2b,id:'minecraft:beetroot',Count:1b},{Slot:3b,id:'minecraft:ladder',Count:1b},{Slot:5b,id:'minecraft:ladder',Count:1b},{Slot:6b,id:'minecraft:jungle_wood',Count:1b},{Slot:7b,id:'minecraft:brown_dye',Count:1b},{Slot:8b,id:'minecraft:jungle_wood',Count:1b},{Slot:9b,id:'minecraft:jungle_wood',Count:1b},{Slot:10b,id:'minecraft:brown_dye',Count:1b},{Slot:11b,id:'minecraft:jungle_wood',Count:1b},{Slot:12b,id:'minecraft:ladder',Count:1b},{Slot:13b,id:"minecraft:leather_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;-214074549,887308405,-1687325914,2093108882],Slot:"chest"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;1459143036,-1205186735,-2117657940,649133623],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.1,Operation:1,UUID:[I;-1054698756,-1050589875,-1085468381,496296247],Slot:"chest"}]}},{Slot:14b,id:'minecraft:ladder',Count:1b},{Slot:15b,id:'minecraft:jungle_wood',Count:1b},{Slot:16b,id:'minecraft:jungle_wood',Count:1b},{Slot:17b,id:'minecraft:brown_dye',Count:1b},{Slot:18b,id:'minecraft:jungle_wood',Count:1b},{Slot:19b,id:'minecraft:jungle_wood',Count:1b},{Slot:20b,id:'minecraft:painting',Count:1b,tag:{EntityTag:{Motive:'minecraft:donkey_kong'}}},{Slot:21b,id:'minecraft:ladder',Count:1b},{Slot:22b,id:'minecraft:brown_dye',Count:1b},{Slot:23b,id:'minecraft:ladder',Count:1b},{Slot:24b,id:'minecraft:jungle_wood',Count:1b},{Slot:25b,id:'minecraft:beetroot',Count:1b},{Slot:26b,id:'minecraft:jungle_wood',Count:1b}]}}}},{rewardExp:1b,maxUses:1,buy:{id:"minecraft:raw_gold",Count:16b},buyB:{id:"minecraft:apple",Count:9b},sell:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"O!","bold":true}'},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:jungle_wood",Count:1b},{Slot:1b,id:'minecraft:jungle_wood',Count:1b},{Slot:2b,id:"minecraft:brown_dye",Count:1b},{Slot:3b,id:'minecraft:ladder',Count:1b},{Slot:4b,id:"minecraft:beetroot",Count:1b},{Slot:5b,id:'minecraft:ladder',Count:1b},{Slot:6b,id:'minecraft:jungle_wood',Count:1b},{Slot:7b,id:'minecraft:brown_dye',Count:1b},{Slot:8b,id:'minecraft:jungle_wood',Count:1b},{Slot:9b,id:'minecraft:jungle_wood',Count:1b},{Slot:10b,id:"minecraft:beetroot",Count:1b},{Slot:11b,id:'minecraft:jungle_wood',Count:1b},{Slot:12b,id:'minecraft:ladder',Count:1b},{Slot:13b,id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1454872584,1877887806,-1321687791,365662249],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;1186457350,-1009106662,-2046110954,1436168078],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.1,Operation:1,UUID:[I;582567214,-1818210652,-1537398106,1812325426],Slot:"head"}]}},{Slot:14b,id:'minecraft:ladder',Count:1b},{Slot:15b,id:'minecraft:jungle_wood',Count:1b},{Slot:16b,id:'minecraft:jungle_wood',Count:1b},{Slot:17b,id:"minecraft:painting",Count:1b,tag:{EntityTag:{Motive:"minecraft:donkey_kong"}}},{Slot:18b,id:'minecraft:jungle_wood',Count:1b},{Slot:19b,id:'minecraft:jungle_wood',Count:1b},{Slot:21b,id:'minecraft:ladder',Count:1b},{Slot:22b,id:'minecraft:brown_dye',Count:1b},{Slot:23b,id:'minecraft:ladder',Count:1b},{Slot:24b,id:'minecraft:jungle_wood',Count:1b},{Slot:25b,id:"minecraft:brown_dye",Count:1b},{Slot:26b,id:'minecraft:jungle_wood',Count:1b}]}}}},{rewardExp:1b,maxUses:1,buy:{id:"minecraft:raw_gold",Count:16b},buyB:{id:"minecraft:twisting_vines",Count:8b},sell:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"N!","bold":true}'},BlockEntityTag:{Items:[{Slot:0b,id:'minecraft:jungle_wood',Count:1b},{Slot:1b,id:'minecraft:jungle_wood',Count:1b},{Slot:2b,id:'minecraft:beetroot',Count:1b},{Slot:3b,id:'minecraft:ladder',Count:1b},{Slot:4b,id:"minecraft:brown_dye",Count:1b},{Slot:5b,id:'minecraft:ladder',Count:1b},{Slot:6b,id:'minecraft:jungle_wood',Count:1b},{Slot:7b,id:"minecraft:painting",Count:1b,tag:{EntityTag:{Motive:"minecraft:donkey_kong"}}},{Slot:8b,id:'minecraft:jungle_wood',Count:1b},{Slot:9b,id:'minecraft:jungle_wood',Count:1b},{Slot:10b,id:'minecraft:brown_dye',Count:1b},{Slot:11b,id:'minecraft:jungle_wood',Count:1b},{Slot:12b,id:'minecraft:ladder',Count:1b},{Slot:13b,id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;849962756,-183482837,-1459028622,5457396],Slot:"feet"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-1539147560,-1253031744,-2019691222,1599837257],Slot:"feet"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.1,Operation:1,UUID:[I;897761421,-748600578,-1845666021,-599914795],Slot:"feet"}]}},{Slot:14b,id:'minecraft:ladder',Count:1b},{Slot:15b,id:'minecraft:jungle_wood',Count:1b},{Slot:16b,id:'minecraft:jungle_wood',Count:1b},{Slot:17b,id:"minecraft:beetroot",Count:1b},{Slot:18b,id:'minecraft:jungle_wood',Count:1b},{Slot:19b,id:'minecraft:jungle_wood',Count:1b},{Slot:20b,id:"minecraft:brown_dye",Count:1b},{Slot:21b,id:'minecraft:ladder',Count:1b},{Slot:23b,id:'minecraft:ladder',Count:1b},{Slot:24b,id:'minecraft:jungle_wood',Count:1b},{Slot:25b,id:"minecraft:brown_dye",Count:1b},{Slot:26b,id:'minecraft:jungle_wood',Count:1b}]}}}},{rewardExp:1b,maxUses:1,buy:{id:"minecraft:raw_gold",Count:16b},buyB:{id:"minecraft:spyglass",Count:1b},sell:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"G!","bold":true}'},BlockEntityTag:{Items:[{Slot:0b,id:'minecraft:jungle_wood',Count:1b},{Slot:1b,id:'minecraft:jungle_wood',Count:1b},{Slot:2b,id:"minecraft:painting",Count:1b,tag:{EntityTag:{Motive:"minecraft:donkey_kong"}}},{Slot:3b,id:'minecraft:ladder',Count:1b},{Slot:4b,id:"minecraft:brown_dye",Count:1b},{Slot:5b,id:'minecraft:ladder',Count:1b},{Slot:6b,id:'minecraft:jungle_wood',Count:1b},{Slot:7b,id:"minecraft:brown_dye",Count:1b},{Slot:8b,id:'minecraft:jungle_wood',Count:1b},{Slot:9b,id:'minecraft:jungle_wood',Count:1b},{Slot:10b,id:"minecraft:beetroot",Count:1b},{Slot:11b,id:'minecraft:jungle_wood',Count:1b},{Slot:12b,id:'minecraft:ladder',Count:1b},{Slot:13b,id:"minecraft:leather_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-2127776511,1004355584,-1905622648,2047832605],Slot:"legs"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:1,UUID:[I;-677915098,-1737405073,-1831933852,16271127],Slot:"legs"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.1,Operation:1,UUID:[I;1261783636,-567391133,-1660797332,-1384485632],Slot:"legs"}]}},{Slot:14b,id:'minecraft:ladder',Count:1b},{Slot:15b,id:'minecraft:jungle_wood',Count:1b},{Slot:16b,id:'minecraft:jungle_wood',Count:1b},{Slot:17b,id:"minecraft:brown_dye",Count:1b},{Slot:18b,id:'minecraft:jungle_wood',Count:1b},{Slot:19b,id:'minecraft:jungle_wood',Count:1b},{Slot:20b,id:"minecraft:brown_dye",Count:1b},{Slot:21b,id:'minecraft:ladder',Count:1b},{Slot:22b,id:"minecraft:beetroot",Count:1b},{Slot:23b,id:'minecraft:ladder',Count:1b},{Slot:24b,id:'minecraft:jungle_wood',Count:1b},{Slot:26b,id:'minecraft:jungle_wood',Count:1b}]}}}}]}}
#ラバ
execute at @e[type=mule] if entity @e[type=skeleton_horse,nbt={SkeletonTrap:false},distance=..5] unless entity @e[type=zombie_horse,distance=..5] run summon area_effect_cloud ~ ~ ~ {Particle:"flash",Radius:2f,Duration:20,Effects:[{Id:7b,Amplifier:10b,Duration:5}],Passengers:[{id:"zombie_horse"},{id:"lightning_bolt"}]}
#ラマ
#execute as @e[type=minecraft:llama_spit] at @s run data modify entity @s Owner set from entity @e[sort=random,limit=1,distance=..10,type=!llama] UUID
execute as @e[type=minecraft:llama_spit] at @s run data modify entity @s Owner set from entity @e[sort=random,limit=1,distance=..10,type=!llama,type=!item,type=!#minecraft:impact_projectiles] UUID
#スケルトンホースe
execute at @e[type=skeleton_horse] unless entity @e[type=item,distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:bone",Count:1b}}
#ゾンビホース
execute at @e[type=zombie_horse,tag=!enemy] as @e[nbt={ActiveEffects:[{Id:17b}]}] at @s unless entity @e[type=area_effect_cloud,distance=..0] run summon area_effect_cloud ~ ~ ~ {Particle:"sneeze",Radius:0.5f,Duration:10,Effects:[{Id:1b,Amplifier:2b,Duration:100},{Id:8b,Amplifier:1b,Duration:100},{Id:16b,Amplifier:0b,Duration:300}]}
#イルカ
execute at @e[type=dolphin] unless block ~ ~ ~ water if block ~ ~-1 ~ water if block ^ ^ ^1 water run summon area_effect_cloud ~ ~ ~ {Particle:"happy_villager",Radius:3f,Duration:60,RadiusPerTick:-0.05f,Effects:[{Id:26b,Amplifier:0b,Duration:6000},{Id:29b,Amplifier:0b,Duration:6000},{Id:30b,Amplifier:0b,Duration:6000}]}
#カメe
#execute at @e[type=minecraft:turtle] as @e[type=item,nbt={Item:{id:"minecraft:rabbit_stew"}},distance=..20] run data modify entity @s Item set value {id:"minecraft:suspicious_stew",Count:1b,tag:{Effects:[{EffectId:1b,EffectDuration:12000},{EffectId:7b,EffectDuration:5},{EffectId:8b,EffectDuration:12000},{EffectId:11b,EffectDuration:12000},{EffectId:12b,EffectDuration:12000},{EffectId:16b,EffectDuration:12000},{EffectId:27b,EffectDuration:12000},{EffectId:29b,EffectDuration:12000},{EffectId:31b,EffectDuration:12000}]}}
execute at @e[type=minecraft:turtle] as @e[type=item,nbt={Item:{id:"minecraft:rabbit_stew"}},distance=..20] run data modify entity @s Item set value {id:"minecraft:suspicious_stew",Count:1b,tag:{display:{Name:'{"text":"ウミガメのシチュー"}'},Effects:[{EffectId:5b,EffectDuration:1200},{EffectId:7b,EffectDuration:3},{EffectId:11b,EffectDuration:1200},{EffectId:16b,EffectDuration:1200},{EffectId:17b,EffectDuration:40},{EffectId:27b,EffectDuration:1200},{EffectId:29b,EffectDuration:1200},{EffectId:31b,EffectDuration:1200}]}}
#フグe
execute at @e[type=minecraft:pufferfish,nbt=!{Air:300s}] run setblock ~ ~-0.5 ~ minecraft:water[level=6] keep
#熱帯魚e

#サケ
execute at @e[type=salmon] at @e[type=!salmon,distance=..5] if block ~ ~ ~ air run fill ~-0.3 ~-1 ~-0.3 ~0.3 ~-1 ~0.3 frosted_ice replace water[level=0]
#タラ
execute at @e[type=cod] unless entity @e[type=cod,distance=10..30] positioned ^ ^ ^3 if block ~ ~ ~ minecraft:water unless entity @e[type=cod,distance=..2] run summon cod
#ウーパールーパー
execute as @e[type=axolotl,nbt={Variant:4},nbt={Invulnerable:0b}] run data modify entity @s Invulnerable set value 1b
#イカe

#ヒカリイカe

#ストライダーe
execute as @e[type=minecraft:strider] at @s unless entity @e[tag=zombie_traveller,distance=..30] positioned ~ ~0.84 ~ if entity @e[type=minecraft:zombified_piglin,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:strider",UUID:[I;4,4,4,4],PersistenceRequired:1b,Saddle:1b,Tags:["zombie_traveller"],Passengers:[{id:"minecraft:piglin",PersistenceRequired:1b,Health:2f,HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b},{id:"minecraft:book",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b}]}]},{id:"minecraft:strider",UUID:[I;44,44,44,44],PersistenceRequired:1b,Saddle:1b,Tags:["zombie_traveller"],Passengers:[{id:"minecraft:zombified_piglin",PersistenceRequired:1b,HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}],Leash:{UUID:[I;4,4,4,4]}},{id:"minecraft:strider",PersistenceRequired:1b,Saddle:1b,Motion:[0.1,0.0,0.0],Tags:["zombie_traveller"],Passengers:[{id:"minecraft:zombified_piglin",HasVisualFire:1b,PersistenceRequired:1b,HandItems:[{id:"minecraft:spyglass",Count:1b},{}]}],Leash:{UUID:[I;4,4,4,4]}},{id:"minecraft:strider",PersistenceRequired:1b,Saddle:1b,Motion:[-0.1,0.0,0.0],Tags:["zombie_traveller"],Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",Count:1b},{}]}],Leash:{UUID:[I;4,4,4,4]}},{id:"minecraft:strider",PersistenceRequired:1b,Tags:["zombie_traveller"],Passengers:[{id:"minecraft:chest_minecart",Items:[{Slot:0b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Damage:79}},{Slot:1b,id:"minecraft:rotten_flesh",Count:2b},{Slot:2b,id:"minecraft:crimson_roots",Count:1b},{Slot:5b,id:"minecraft:fishing_rod",Count:1b,tag:{Damage:93}},{Slot:7b,id:"minecraft:crimson_roots",Count:2b},{Slot:8b,id:"minecraft:lead",Count:1b},{Slot:9b,id:"minecraft:bone",Count:3b},{Slot:10b,id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{Slot:11b,id:"minecraft:golden_sword",Count:1b,tag:{Damage:82}},{Slot:12b,id:"minecraft:crimson_roots",Count:2b},{Slot:13b,id:"minecraft:arrow",Count:7b},{Slot:14b,id:"minecraft:crossbow",Count:1b,tag:{Damage:108}},{Slot:15b,id:"minecraft:golden_leggings",Count:1b,tag:{Damage:44}},{Slot:16b,id:"minecraft:cooked_porkchop",Count:1b},{Slot:17b,id:"minecraft:rotten_flesh",Count:2b},{Slot:18b,id:"minecraft:rotten_flesh",Count:1b},{Slot:19b,id:"minecraft:crossbow",Count:1b,tag:{Damage:7}},{Slot:20b,id:"minecraft:porkchop",Count:1b},{Slot:21b,id:"minecraft:rotten_flesh",Count:5b},{Slot:22b,id:"minecraft:golden_chestplate",Count:1b,tag:{Damage:54}},{Slot:23b,id:"minecraft:music_disc_11",Count:1b},{Slot:24b,id:"minecraft:raw_gold",Count:4b},{Slot:25b,id:"minecraft:warped_fungus",Count:3b},{Slot:26b,id:"minecraft:arrow",Count:3b}]}],Leash:{UUID:[I;44,44,44,44]}}]}
#上位
#村人ゾンビ
execute as @e[type=villager] at @s facing entity @e[type=zombie_villager,nbt=!{ActiveEffects:[{Id:14b}]},distance=..7,sort=nearest,limit=1] feet if block ^ ^ ^0.01 air unless block ~ ~-0.5 ~ air run tp ^ ^ ^0.01
#ドラウンドe

#ハスクe

#ジャイアント
execute at @e[type=giant] if entity @p[distance=..30] run time set midnight
#ストレイe

#ウィザースケルトン
execute at @e[type=wither_skeleton] positioned ^ ^ ^5 at @e[type=!wither_skeleton,distance=..3] unless entity @e[type=wither_skeleton,nbt={HandItems:[{id:"minecraft:bow"},{}]},distance=..15] positioned ^ ^ ^5 if entity @e[type=wither_skeleton,distance=..3] positioned ^ ^ ^-5 positioned ^ ^1 ^-10 if block ~ ~2 ~ air run summon wither_skeleton ~ ~ ~ {HandItems:[{id:"bow",Count:1b},{}],NoGravity:true,Attributes:[{Name:generic.follow_range,Base:30},{Name:generic.movement_speed,Base:0.4}]}
#洞窟グモ
execute at @e[type=cave_spider] at @e[nbt={ActiveEffects:[{Id:19b}]},distance=3..16] run fill ^ ^ ^-1 ^ ^-1 ^ cobweb keep
#マグマキューブe
execute at @e[type=minecraft:magma_cube,nbt={OnGround:0b}] unless block ~ ~-0.3 ~ air unless block ~ ~-0.3 ~ minecraft:cave_air unless block ~ ~-0.3 ~ water unless block ~ ~-0.3 ~ lava run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:0f,RadiusPerTick:0.5f,Duration:15,Effects:[{Id:4b,Amplifier:0b,Duration:200},{Id:25b,Amplifier:20b,Duration:5}]}
#強敵
#ファントム
execute at @e[type=phantom,tag=!dragon_eye] at @e[type=!phantom,distance=..10] anchored eyes positioned ^ ^ ^5 unless entity @e[type=area_effect_cloud,distance=..5] run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_signal_smoke",Radius:2f,Duration:20,Effects:[{Id:15b,Amplifier:0b,Duration:20},{Id:28b,Amplifier:0b,Duration:20}]}
#シルバーフィッシュe
#execute at @e[type=!item] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ infested_stone_bricks unless entity @e[type=area_effect_cloud,distance=..1] run summon area_effect_cloud ~ ~ ~ {Particle:"enchant",Radius:0.5f,Duration:20,Effects:[{Id:4b,Amplifier:0b,Duration:300},{Id:19b,Amplifier:0b,Duration:300}]}
#execute at @e[type=minecraft:silverfish,nbt=!{HurtTime:0s}] unless block ~ ~-3 ~ air unless entity @e[type=minecraft:zombie,distance=..10] run summon item ~ ~-3 ~ {Age:5980,Passengers:[{id:"minecraft:zombie",CanBreakDoors:1b,Passengers:[{id:"minecraft:silverfish"}],ArmorItems:[{},{},{},{id:'minecraft:skeleton_skull',Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:1b,Amplifier:2b,Duration:99999},{Id:6b,Amplifier:0b,Duration:1}],Attributes:[{Name:generic.follow_range,Base:3},{Name:generic.movement_speed,Base:0.05}]},{id:"minecraft:silverfish"}],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}}}
execute at @e[type=silverfish,nbt={Health:8f},nbt=!{OnGround:1b}] unless entity @e[type=silverfish,distance=0.1..10] run summon silverfish
#エンダーマイト
execute as @e[type=minecraft:endermite,nbt=!{HurtTime:0s}] run effect give @s minecraft:invisibility 5 0
#ピグリン
execute at @e[type=piglin,nbt={ArmorItems:[{},{},{},{}],Inventory:[]},limit=1,sort=random] if entity @e[type=minecraft:piglin,distance=0.1..10] unless entity @e[type=item,distance=..10] if entity @e[type=piglin_brute,distance=..100] run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:item",PickupDelay:100,Item:{id:"minecraft:golden_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:34,Operation:0,UUID:[I;132853098,-446676734,-1902911843,-204232794]}]}}},{id:"minecraft:item",PickupDelay:100,Item:{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:thorns",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;322805647,-1151057740,-2030361601,-1355623587]}]}}},{id:"minecraft:item",PickupDelay:100,Item:{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;87766925,1511608180,-2081129729,-407805680]}]}}},{id:"minecraft:item",PickupDelay:100,Item:{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:soul_speed",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-34354545,1331643737,-2049514007,1861306961]}]}}},{id:"minecraft:item",Item:{id:"minecraft:gold_nugget",Count:10b}}]}
#ピグリンブルートe

#ゾンビピグリン
#execute at @e[type=zombified_piglin,nbt=!{AngerTime:0}] as @e[nbt=!{Attributes:[{Name:generic.follow_range,Base:100}]},distance=..50] run data modify entity @s Attributes set value [{Name:generic.follow_range,Base:100}]
execute as @e[type=minecraft:zombified_piglin] at @s run data modify entity @s AngryAt set from entity @e[type=!minecraft:zombified_piglin,type=!item,sort=nearest,limit=1,distance=..2] UUID
#ホグリン
execute at @e[type=hoglin,nbt=!{InLove:0}] if entity @e[type=minecraft:hoglin,distance=1..5,nbt=!{InLove:0}] as @e[distance=..10] run effect give @s minecraft:health_boost 86400 4
#ゾグリン
#execute at @e[type=zoglin] unless entity @e[type=area_effect_cloud,distance=..10,tag=zoglin_area] run summon area_effect_cloud ~ ~ ~ {Radius:0.5f,Duration:10,DurationOnUse:-20f,Passengers:[{id:"minecraft:area_effect_cloud",Tags:["zoglin_area"],Particle:"damage_indicator",Radius:0f,RadiusPerTick:1f,Duration:10,WaitTime:30,Effects:[{Id:2b,Amplifier:2b,Duration:20},{Id:7b,Amplifier:2b,Duration:1},{Id:11b,Amplifier:0b,Duration:1728000},{Id:17b,Amplifier:80b,Duration:200}]}],Effects:[{Id:1b,Amplifier:1b,Duration:1200},{Id:5b,Amplifier:3b,Duration:1200}]}
execute as @e[type=minecraft:zoglin,nbt=!{HandItems:[{},{id:"minecraft:shield"}]},nbt=!{Health:40.0f}] at @s store result entity @s Health float 0 run summon zoglin ~ ~ ~ {Health:60.0f,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:10s}]}},{id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"腐った盾","color":"aqua"}'},Damage:300,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;857984506,-81116036,-1722251701,2137334562],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.5,Operation:1,UUID:[I;1239268355,80629596,-1469849722,771631615],Slot:"offhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;-222729449,821710015,-1489962706,-1816878025],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;184172674,-1882503138,-1086069259,498041927],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-568573256,-1150663028,-1617098084,1358565971],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.9,Operation:1,UUID:[I;751833512,1422282200,-1268346272,-460339543],Slot:"mainhand"}],BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0},{Pattern:"glb",Color:6},{Pattern:"cbo",Color:13},{Pattern:"bri",Color:14}],Base:15}}}],HandDropChances:[0.000F,1.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:feather_falling",lvl:1s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:10s},{id:"minecraft:thorns",lvl:2s},{id:"minecraft:frost_walker",lvl:1s},{id:"minecraft:soul_speed",lvl:1s}]}},{},{},{}],ArmorDropChances:[0.000F,0.085F,0.085F,0.085F],Attributes:[{Name:generic.max_health,Base:60.0},{Name:generic.follow_range,Base:32},{Name:generic.movement_speed,Base:0.35}]}
#ブレイズe
#execute at @e[type=minecraft:small_fireball] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 lava[level=1] replace fire
#execute at @e[type=minecraft:small_fireball] if block ~ ~-0.5 ~ fire run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 lava[level=1] keep
execute as @e[type=minecraft:blaze] at @s unless entity @e[type=minecraft:fox,distance=..20] run summon firework_rocket ~ ~ ~ {HasVisualFire:1b,LifeTime:10,Motion:[0.0,0.5,0.0],Passengers:[{id:"minecraft:fox",HasVisualFire:1b,Motion:[0.0,0.5,0.0],Passengers:[{id:"minecraft:silverfish",HasVisualFire:1b,Silent:1b,HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:99999},{Id:14b,Amplifier:0b,Duration:99999}]}],ActiveEffects:[{Id:28b,Amplifier:0b,Duration:99999}]}]}
#ガスト
execute at @e[type=ghast] run kill @e[distance=..10,type=!fireball,type=!wither,type=!ghast,type=!enderman,type=!skeleton,type=!wither_skeleton,type=!blaze,type=!magma_cube,type=!hoglin,type=!piglin,type=!piglin_brute,type=!zombified_piglin,type=!strider]
#シュルカー
#execute at @e[type=minecraft:shulker] at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:elytra"}},distance=..50] unless entity @e[type=minecraft:command_block_minecart,tag=shulker,distance=..10] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:redstone_block"},Time:1,Passengers:[{id:"minecraft:area_effect_cloud",Duration:20,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:activator_rail"},Time:1,Passengers:[{id:"minecraft:command_block_minecart",Command:"execute at @e[type=minecraft:shulker,nbt={Peek:100b},distance=..50] positioned ~ ~2 ~ if entity @e[type=minecraft:shulker_bullet,distance=2..20] unless entity @e[type=minecraft:shulker_bullet,distance=..2] run summon minecraft:shulker_bullet ~ ~ ~ {Steps:1}",Tags:["shulker"]},{id:"minecraft:command_block_minecart",Command:"execute as @e[type=minecraft:shulker_bullet,distance=..50] at @s run data modify entity @s Target set from entity @e[type=minecraft:shulker_bullet,limit=1,sort=furthest] Target",Tags:["shulker"]}]}]}]}
execute at @e[type=minecraft:shulker,nbt={Peek:30b},tag=!rider] unless entity @e[type=minecraft:endermite,distance=..5] run summon endermite ~ ~ ~ {Lifetime:2300}
#略奪
#ヴィンディケーターe
execute as @e[type=minecraft:vindicator,sort=random,limit=1] at @s if entity @e[type=minecraft:vindicator,distance=0.1..10] if entity @e[type=minecraft:pillager,distance=..10] unless entity @e[tag=royal_vindicator,distance=..20] run summon vindicator ~ ~ ~ {CanPickUpLoot:1b,AbsorptionAmount:24f,Health:12f,Johnny:1b,PatrolLeader:1b,Patrolling:1b,CanJoinRaid:1b,Tags:["royal_vindicator"],HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{id:"minecraft:shield",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.8,Operation:0,UUID:[I;-1416099236,108284001,-1330051610,1166704511],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;2060609541,-825671196,-1484919450,345400488],Slot:"offhand"}],BlockEntityTag:{Base:15,Patterns:[{Pattern:sc,Color:4},{Pattern:flo,Color:15},{Pattern:bo,Color:4}]}}}],ArmorItems:[{},{},{id:"minecraft:totem_of_undying",Count:1b},{id:"minecraft:white_banner",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:10,Operation:0,UUID:[I;-427564967,1796426898,-1961142600,-1738495926]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-298741571,1648184905,-1138334715,390999831]}],BlockEntityTag:{Base:15,Patterns:[{Pattern:hh,Color:15},{Pattern:mc,Color:14},{Pattern:hhb,Color:0},{Pattern:ss,Color:10},{Pattern:tt,Color:0},{Pattern:ts,Color:0},{Pattern:sc,Color:0},{Pattern:bs,Color:10},{Pattern:bo,Color:15}]}}}],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.attack_knockback,Base:2}]}
#ピリジャー
execute at @e[type=pillager] if entity @e[type=ravager,distance=..2] unless entity @e[type=illusioner,distance=..100] if entity @e[type=arrow,distance=..30] run summon illusioner ~ ~ ~
#エヴォーカー
execute at @e[type=evoker] positioned as @e[type=evoker_fangs,nbt={Warmup:2},distance=..50,limit=1,sort=furthest] facing entity @e[type=!evoker_fangs,type=!#raiders,type=!vex,distance=..30,limit=3,sort=nearest] feet positioned ^ ^ ^1 unless entity @e[type=evoker_fangs,distance=..0.5] run summon evoker_fangs ~ ~ ~ {Warmup:4}
#execute at @e[type=evoker] at @e[type=#minecraft:raiders,distance=..100] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 spawner{SpawnCount:1,SpawnRange:2,MinSpawnDelay:1200,MaxSpawnDelay:1300,MaxNearbyEntities:1,RequiredPlayerRange:30,SpawnData:{entity:{id:"minecraft:area_effect_cloud",Passengers:[{id:"minecraft:evoker_fangs",Warmup:4}]}}} replace fire
#ヴェックス
execute at @e[type=vex,nbt={Health:1.0f,LifeTicks:1}] run summon evoker_fangs ~ ~ ~ {Warmup:4}
#execute at @e[type=vex] positioned as @e[type=evoker_fangs,nbt={Warmup:2},distance=..50,limit=1,sort=furthest] facing entity @e[type=!evoker_fangs,type=!#raiders,type=!vex,distance=..30,limit=3,sort=nearest] feet positioned ^ ^ ^1 unless entity @e[type=evoker_fangs,distance=..0.5] run summon evoker_fangs ~ ~ ~ {Warmup:4}
#ラヴェジャーe
execute as @e[type=minecraft:ravager,nbt={RoarTick:10}] at @s at @e[type=!#minecraft:raiders,sort=nearest,limit=3] run summon minecraft:lightning_bolt
#ウィッチ
execute at @e[type=witch] at @e[type=potion,distance=..20] unless entity @e[type=#raiders,distance=..4] unless block ~ ~-1 ~ air run summon lightning_bolt
#イリュージョナー
#execute at @e[type=illusioner,nbt={SpellTicks:1}] run summon phantom ~ ~ ~ {Size:4,HandItems:[{id:"minecraft:totem_of_undying",Count:1b},{}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:600},{Id:14b,Amplifier:0b,Duration:60}]}
execute at @e[type=illusioner,nbt={SpellTicks:1}] at @e[type=arrow,nbt={inGround:true},distance=..30,limit=100] unless block ~ ~-3 ~ air run summon item ~ ~-3 ~ {Age:5980,Item:{id:"totem_of_undying",Count:1b},Passengers:[{id:"zombie_villager",Health:4f,ArmorItems:[{id:"coarse_dirt",Count:1b},{},{id:"ancient_debris",Count:1b},{}],ArmorDropChances:[0.700F,0.085F,0.010F,0.085F]}]}
#ボス
#ガーディアン

#エルダーガーディアンe
#execute at @e[type=elder_guardian] run fill ~-20 ~-9 ~-20 ~20 ~9 ~20 spawner{SpawnCount:1,SpawnRange:30,MinSpawnDelay:0,MaxSpawnDelay:2400,MaxNearbyEntities:50,RequiredPlayerRange:50,SpawnData:{id:"minecraft:guardian"},SpawnPotentials:[{Weight:10,Entity:{id:"minecraft:guardian"}},{Weight:1,Entity:{id:"minecraft:trident",pickup:1b,crit:1b,Trident:{id:"minecraft:trident",Count:1b,tag:{RepairCost:100,Damage:248,Enchantments:[{id:"minecraft:riptide",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-50,Operation:0,UUID:[I;220572574,1150503934,-1622107278,1321287145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:-50,Operation:0,UUID:[I;-1470249345,-43890894,-1458597896,-217256513]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:50,Operation:0,UUID:[I;-1438977250,-2025501959,-1987298478,2003884162]}]}}}}]} replace gold_block
#execute at @e[type=elder_guardian] run fill ~-20 ~-9 ~-20 ~20 ~9 ~20 spawner{SpawnCount:1,SpawnRange:30,MinSpawnDelay:0,MaxSpawnDelay:2400,MaxNearbyEntities:50,RequiredPlayerRange:50,SpawnData:{entity:{id:"minecraft:guardian"}},SpawnPotentials:[{weight:10,data:{entity:{id:"minecraft:guardian"}}},{weight:1,data:{entity:{id:"minecraft:trident",pickup:1b,crit:1b,Trident:{id:"minecraft:trident",Count:1b,tag:{RepairCost:100,Damage:248,Enchantments:[{id:"minecraft:riptide",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-50,Operation:0,UUID:[I;220572574,1150503934,-1622107278,1321287145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:-50,Operation:0,UUID:[I;-1470249345,-43890894,-1458597896,-217256513]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:50,Operation:0,UUID:[I;-1438977250,-2025501959,-1987298478,2003884162]}]}}}}}]} replace gold_block
#ウィザーe
#execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}}] at @s unless entity @e[type=minecraft:fireball,distance=..3] run summon fireball ~ ~ ~ {ExplosionPower:5b,power:[0.0,-0.3,0.0],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:spawner"},TileEntityData:{SpawnCount:120,SpawnRange:30,Delay:0,MinSpawnDelay:300,MaxSpawnDelay:300,MaxNearbyEntities:300,RequiredPlayerRange:30,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:soul_sand"},Time:1,DropItem:0b}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:soul_sand"},Time:1,DropItem:0b}}},{weight:1,data:{entity:{id:"minecraft:wither_skeleton",Passengers:[{id:"minecraft:wither_skull",power:[0.0,-0.3,0.0]}]}}},{weight:1,data:{entity:{id:"minecraft:potion",Motion:[0.0,1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:7b,Amplifier:0b,Duration:1},{Id:20b,Amplifier:0b,Duration:20}]}}}}}]},Time:1}]}
execute as @e[type=minecraft:wither,nbt={Invul:0},nbt=!{HurtTime:0s}] at @s store result entity @s Invul byte 60 unless block ~ ~-1 ~ air unless entity @e[type=minecraft:wither_skull,distance=..5] unless entity @e[type=minecraft:wither_skeleton,distance=..20] at @e[distance=10..20,sort=random] run summon minecraft:wither_skeleton
#ドラゴンe
#execute at @e[type=ender_dragon] at @e[type=minecraft:area_effect_cloud,nbt={Age:0},distance=..200] run summon endermite ~ ~ ~ {Passengers:[{id:"minecraft:end_crystal"},{id:"minecraft:spawner_minecart",SpawnCount:10,Delay:0,MinSpawnDelay:1000,MaxSpawnDelay:1400,DisplayState:{Name:"minecraft:crying_obsidian"},SpawnData:{entity:{id:"minecraft:enderman",NoGravity:1b,CustomName:'{"text":"Grumm"}'}}}]}
execute at @e[type=minecraft:ender_dragon] as @e[type=minecraft:area_effect_cloud,distance=..1000] at @s run data modify entity @s Duration set value 3600

#おまけ
#summon愛くるしいウサギ
#summon rabbit ~ ~ ~ {CustomName:'{"text":"愛くるしいウサギ","color":"light_purple"}',CustomNameVisible:true,Glowing:true,Attributes:[{Name:generic.movement_speed,Base:0.5,Passengers:[{id:"guardian",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:72000}]}]}]}

#最強装備
#防具、ロバ
#武器近、ゾグリン
#武器遠、エルダーガーディアン
#食料、
#バフ、ホグリン、（ゾンビホース）、カメ
#特殊武器、イカ、ヒカリイカ
