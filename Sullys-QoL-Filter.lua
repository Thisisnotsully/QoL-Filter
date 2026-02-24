--- Filter Title: Sully's Quality of Life Filter
--- Filter Type: MultiStrict
--- Filter Description: PoE Themed with custom drop sounds, automatic filtering as you level, adjustable strictness, and many QoL Feautres
--- Filter Link: https://raw.githubusercontent.com/Thisisnotsully/QoL-Filter/refs/heads/main/Sullys-QoL-Filter.lua
return {
    reload = "{white}Sully's Quality of Life Filter {purple}v0.1",  -- **********   Big shout out to Squid and PlausibleSheep because this filter wouldn't exist without me plagiarizing their filters, features, and logic. They put in the hard work, I'm a hack.   ****************
    language = "enUS",
    filter_titles = { "Leveling", "Strict", "Very-Strict", "Uber-Strict" },
    audioPlayback = true,
    audioVoice = 0,
    debug = false,
    allowOverrides = true,
    filter_level = 4,
    rules = {
        -- Tooltip descriptions for noob charm
        {
            code = "c11",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{purple} To Upgrade: Cube with 7 Rare Charms, Elixir, Maple Leaf, and Ancient Decipherer \n Socket with any Rune, Gem, or Jewel \n {green}***Browse Akara's items for more tips!***\n"
        },
        -- Tooltip descriptions for veteran charm
        {
            code = "c12",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = " {purple}To add a socket cube with 1 Perfect gem and Socket Donut \n ** Supports Charm Runewords ** \n"
        },
        -- Vendor item tooltips for some crafting recipes
        {
            code = "vps",
            location = "atvendor", 
            suffix_desc = "\nTome of ID: Jewel Forging Recipes\nToken of Absolution: Gear Forging Recipes\n{green}Hover Perfect Gems to see class crafting recipes\n"
        },
        {
            code = "gvb",
            location = "atvendor",
            prefix = "{blue}Non-Barb Weapon:{gray} 25-35 Attack Speed|150-200 Enhanced Damage|15-25 Life Leech|10-15 Mana Leech\n{blue}Weapon:{gray} +1-2 Barb Skills|25-35 Attack Speed|150-200 Enhanced Damage\n{blue}Ring:{gray} +1-2 Barb Skills|10-15 Pct Max Life|20-30 Str|+20-30 Max Dmg to Attacks\n{blue}Amulet:{gray} +1-2 Barb Skills|10-15 Pct Max Life|15-25 All Resists\n{blue}Chest:{gray} +1-2 Barb Skills|80-100 ED|15-25 all attributes|+10-15 Phys Res\n{blue}Shield:{gray} +1-2 Barb Skills|20-30 Faster Block|80-100 ED|3-5 Increased Block\n{blue}Belt:{gray} +1 Barb Skills|20-30 Hit Recovery|80-100 ED|30-45 Str\n{blue}Gloves:{gray} +1 Barb Skills|20-30 Attack Speed|80-100 ED|30-45 Dex\n{blue}Boots:{gray} +1 Barb Skills|20-30 Faster Run/Walk|80-100 ED|30-45 Vit\n{blue}Helm:{gray} +1-2 Barb Skills|80-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic{gray} Gear + Forging Hammer + P.Amethyst + Any Jewel\n"
        },
        {
            code = "gyb",
            location = "atvendor",
            prefix = "{blue}Non-Druid Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|25-40 Spell Dmg\n{blue}Druid Wpn: {gray}+1-2 Druid Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Druid Skill|20-30 Vit|Max Life 10-15 Pct|12-18 Spell Dmg\n{blue}Amulet: {gray}+1-2 Druid Skill|20-30 Vit|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Druid Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Druid Skill|20-30 FBR|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Druid Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Druid Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Druid Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Druid Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Tyranium Ore + P.Topaz + Any Jewel\n"
        },
        {
            code = "ggb",
            location = "atvendor", 
            prefix = "{blue}Non-Amazon Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|50-100 Bonus Attack Rating\n{blue}Amazon Wpn: {gray}+1-2 Amazon Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Amazon Skill|30-45 Dex|Max Life 10-15 Pct|15-25 Min Atk Dmg\n{blue}Amulet: {gray}+1-2 Amazon Skill|20-30 Dex|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Amazon Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Amazon Skill|20-30 Faster Block|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Amazon Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Amazon Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Amazon Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Amazon Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Spider's Silk + P.Emerald + Any Jewel\n"
        },
        {
            code = "grb", 
            location = "atvendor", 
            prefix = "{blue}Non-Assassin Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|20-30 Deadly Strike\n{blue}Assassin Wpn: {gray}+1-2 Assassin Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Assassin Skill|30-45 Dex|Max Life 10-15 Pct|20-30 Life After Kill|10-20 Mana After Kill\n{blue}Amulet: {gray}+1-2 Assassin Skill|20-30 Dex|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Assassin Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Assassin Skill|20-30 Faster Block|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Assassin Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Assassin Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Assassin Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Assassin Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Dragon Stone + P.Ruby + Any Jewel\n"
        },
        {
            code = "skb", 
            location = "atvendor", 
            prefix = "{blue}Non-Necromancer Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|20-30 Crushing Blow\n{blue}Necromancer Wpn: {gray}+1-2 Necromancer Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Necromancer Skill|30-45 Energy|Max Life 10-15 Pct|15-25 Faster Caste Rate\n{blue}Amulet: {gray}+1-2 Necromancer Skill|20-30 Dex|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Necromancer Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Necromancer Skill|20-30 Faster Block|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Necromancer Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Necromancer Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Necromancer Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Necromancer Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Dragon Stone + P.Ruby + Any Jewel\n"
        },
        {
            code = "gwb", 
            location = "atvendor", 
            prefix = "{blue}Non-Paladin Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|200-300 Dmg to Demons|200-300 Dmg to Undead\n{blue}Paladin Wpn: {gray}+1-2 Paladin Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Paladin Skill|20-30 Str|Max Life 10-15 Pct|15-25 All Res\n{blue}Amulet: {gray}+1-2 Paladin Skill|20-30 Dex|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Paladin Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Paladin Skill|20-30 Faster Block|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Paladin Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Paladin Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Paladin Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Paladin Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Dragon Stone + P.Ruby + Any Jewel\n"
        },
        {
            code = "gbb", 
            location = "atvendor", 
            prefix = "{blue}Non-Sorceress Wpn: {gray}25-35 IAS|150-200 Enhanced Dmg|-15-25 Enemy Ele and Psn Resist\n{blue}Sorceress Wpn: {gray}+1-2 Sorceress Skill|25-35 IAS|150-200 Enahcned Dmg\n{blue}Ring: {gray}+1-2 Sorceress Skill|20-30 Energy|Max Life 10-15 Pct|-8-12 Enemy Ele and Psn Res\n{blue}Amulet: {gray}+1-2 Sorceress Skill|20-30 Dex|15 Pct Max Life|15-25 All Res\n{blue}Chest: {gray}+1-2 Sorceress Skill|80-100 ED|15-25 All Attr|10-15 Phys Res\n{blue}Shield:{gray} +1-2 Sorceress Skill|20-30 Faster Block|3-5 Block|80-100 ED\n{blue}Belt{gray}+1 Sorceress Skill|20-30 FHR|80-100 ED|30-45 Str\n{blue}Gloves:{gray}+1 Sorceress Skill|20-30 IAS|80-100 ED|30-45 Dex\n{blue}Boots:{gray}+1 Sorceress Skill|20-30 FRW|80-100 ED|30-45 Vit\n{blue}Helm{gray}+1-2 Sorceress Skills|90-100 ED|30-45 Energy|15-25 All Res\n{white}**Each recipe adds the below stats and an additional 1-4 random affixes***\n{blue}Magic {gray}Gear + Dragon Stone + P.Ruby + Any Jewel\n"
        },
        {
            code = "toa", 
            location = "atvendor", 
            suffix_desc = "\n{blue}\n+1 Sorc Skills: 2 Anvil Stones + Chipped Saphhire\n{white}+1 Paladin Skills: 2 Anvil Stones + Chipped Diamond\n{gray}+1 Necromancer Skills: 2 Anvil Stones + Chipped Skull\n{yellow}+1 Druid Skills: 2 Anvil Stones + Chipped Topaz\n{purple}+1 Barbarian Skills: 2 Anvil Stones + Chipped Amethyst\n{red}+1 Assassain Skills: 2 Anvil Stones + Chipped Ruby\n{green}+1 Amazon Skills: 2 Anvil Stones + Chipped Emerald\n+{white}1 All Skills(no jewels or charms): Maple Leaf + Anvil Stone + Chipped Gem\n{gray}Runeforging (no jewels or charms): 2 of the same Rune + Chipped Gem - Adds bonus of the Rune\n{lilac}**Gear Forging**\n"
        },
        {
            code = "tbk", 
            location = "atvendor", 
            suffix = "\n{blue}15 Magic Find: {green}Chipped Emerald {gray}+ Anvil Stone\n{blue}15Increased Attack Speed: {red}Chipped Ruby {gray}+ Anvil Stone\n{blue}9 Percent Chance of Crushing Blow: {purple}Chipped Amethyst {gray}+ Anvil Stone\n{blue}12 Percent Max life: {yellow}Chipped Topaz {gray}+ Anvil Stone\n{blue}15 Faster Cast Rate: Chipped Skull {gray}+ Anvil Stone\n{blue}All Resistances +12: {white}Chipped Diamond {gray}+ Anvil Stone\n{blue}12 Percent Max Mana: {blue}Chipped Sapphire {gray}+ Anvil Stone\n{gray}{blue}Add Weapon Mods of the Rune: {gray}2 of the same Rune (Up to {yellow}O Rune{gray}) + Chipped Gem + TP Scroll\n{blue}Add Helm Mods of the Rune: {gray}2 of the same Rune (Up to {yellow}O Rune{gray}) + Chipped Gem + ID Scroll\nCombine {blue}Magic{gray}/{yellow}Rare {gray}Jewel and:\n{lilac}**Jewel Forging**{white}"
        },
        -- Hiding small gold piles based on level
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 1 },  --hides gold values of 1
            hide = true, 
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 99 },  --hides gold under 100
            pstat = { index = 12, op = ">=", value = 20 }, -- Char Level is >= 20
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 499 }, --hides gold under 500
            pstat = { index = 12, op = ">=", value = 60 }, -- Char Level is >= 60
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 749 }, --hides gold under 1k
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 10 (Tomes, Scrolls, Elixirs, Lowest potions)
        {
            codes = {"vps","yps","gpm","wms","tbk","ibk","tsc","isc","hp1","mp1"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 10 (Low quality gear, Normal items with less than 2 sockets)
        {
            codes = "allitems",
            quality = "1",
            pstat = { index = 12, op = ">=", value = 10 },
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes = {"kgk","cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "2",
            sockets ="1-",
            pstat = { index = 12, op = ">=", value = 10 },
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 20 (All magic Weapons/Armor - 2 lowest postions - Chipped gems)
        {
            codes = {"kgk","cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 4,
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"hp2","mp2"},
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"gcv","gcy", "gcb", "gcg", "gcr", "gcw", "skc", "gck"},
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 40 (3 lowest potions, normal gems)
        {
            codes ={"hp3","mp3"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"gnv","gny", "gnb", "gng", "gnr", "gnw", "snc", "gnk"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 60 (All potions)
        {
            codes ={"hp4","hp5","mp4","mp5"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Leveling filter is handled based on Levels but this will show items the other strictness levels are hiding
        {
            codes ="allitems",
            hide = false,
            filter_levels = 1
        },
        -- Strict: Hiding Low Tier LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l"}, -- Hiding Low Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        -- Strict: Hiding White, Yellow, and Orange ESR runes
        {
            codes = {"r01","r02","r03","r04","r05","r08","r09","r10","r11","r12","r15","r16","r17","r18","r19","r20","r21"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        -- Strict: Hiding non-class based rings and amulets
        {
            codes = {"rng","amu"}, 
            quality = "4-",
            hides = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3,
        },
        -- Very Strict: Hiding Low and Mid Tier LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, -- Hiding Low and Mid Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding White, Yellow, and Orange ESR runes
        {
            codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all magic jewelry, large and grand charms, jewels
        {
            codes = {"rng","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3","jew"}, 
            quality = "4",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =3
        },
        -- Very Strict: Hiding all Normal rarity Unique weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "0",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all Normal rarity weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "2",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding 25% rejuvs
        {
            code = "rvs", 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all Normal/Exceptional Set items
        {
            codes = "allitems",
            quality = "5",
            rarity = "1-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding flawless gems
        {
            codes = {"gzv", "gly", "glb", "glg", "glr", "glw", "skl", "gzk"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hide arrows/bolts
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Uber Strict: Hiding low Low/Mid LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding any ESR runes below Gold
        {
            codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28", "r29", "r30", "r31","r32","r33","r34","r35"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all Normal and Exceptional quality Unique weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "1-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all Set items
        {
            codes = "allitems",
            quality = "5",
            hide = true, -- Hiding all Set items
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding magic rings, amulets, charms, and jewels
        {
            codes = {"rin","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3","jew"}, -- Hiding all magic jewelry, large and grand charms, jewels
            quality = "4",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =4
        },
        -- Uber Strict: Hiding all non mythical superior base
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "3-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: hiding all zero socket rares
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 6,
            sockets = "0",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding non-perfect gems
        {
            codes = {"gzv","gpv","gly","gpy","glb", "gpb", "glg", "gpg", "glr", "gpr", "glw", "gpw", "skl","skz", "gzk", "gpk"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding 25% rejuvs
        {
            code = "rvs", 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hide magic arrows/bolts
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, 
            quality = "4-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hide ancient decipherers
            {   
            code = "ddd",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all normal coupons except highlighted ones (SoJ)
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","04j"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- NEVER hide Runeword items (I mean don't drop them outside of town... but just in case)
        {
            codes = "allitems",
            runeword = true,
            hide = false
        },
        -- Always highlight and notify for Rare Jewels
        {
            code = "jew",
            quality = "6",
            notify = "{yellow}** Rare Jewel **",
            border = {0,200,200,255},
            background = {0,0,0,255},
            name_override = "{yellow}{name}",
            audio = "other.mp3"
        },
        -- Tooltip for Jewel crfating options
        {
            code = "jew",
            location = {"onplayer","atvendor"},
            quality = "6-",
            suffix_desc = "{gray}Can be forged. Check Akara's inventory for recipes{blue}\n"
        },
        -- Rejuvination Potion Style
        {
            codes = {"rvs","rvl"},
            border = {128, 0, 128, 255}
        },
        {
            code = "po3",
            border = {128, 0, 128, 255},
            name_override = "{purple}*{white}Full{purple}*"
        },
        -- Ores tooltip, style, and notifications
        {
            code = "ore",
            border = {0, 0, 0, 255},
            background = {255, 215, 150},
            prefix = "{green}$$",
            name_override = "{black}Ore",
            suffix = "{green}$$",
            notify = "{gold}Gold Source: {name}",
            audio = "mid.mp3"
        },
        {
            code = "ore",
            location = {"onplayer","atvendor"},
            suffix_desc = "{purple} Sell to vendor when empty \n",
        },
        -- Fake note style, notifications
        {
            code = "fkn",
            border = {0, 0, 0, 255},
            background = {255, 215, 150},
            prefix = "{green}$$",
            name_override = "{black}Fake Note",
            suffix = "{green}$$",
            notify = "{gold}Gold Source: {name}",
            audio = "mid.mp3"
        },
        -- D-Stone notifications
        {
            codes = {"ppp","hly","eee","hh2","ggg","sss","ttt"},
            notify = "{Red}Crafting Reagant:{purple} D-Stone",
            border = {150,0,150,255}
        },  
        -- Tooltip description for D-Stones
        {
            code = "ppp",
            location = {"onplayer","atvendor"},
            suffix_desc = "{red}Assassin Crafting Material\n",
        },
        {
            code = "hly",
            location = {"onplayer","atvendor"},
            suffix_desc = "{white}Paladin Crafting Material\n",
        },
        {
            code = "eee",
            location = {"onplayer","atvendor"},
            suffix_desc = "{gray}Necromancer Crafting Material\n",
        },
        {
            code = "hh2",
            location = {"onplayer","atvendor"},
            suffix_desc = "{purple}Barbarian Crafting Material\n",
        },
        {
            code = "ggg",
            location = {"onplayer","atvendor"},
            suffix_desc = "{blue}Sorceress Crafting Material\n",
        },
        {
            code = "sss",
            location = {"onplayer","atvendor"},
            suffix_desc = "{green}Amazon Crafting Material\n",
        },
        {
            code = "ttt",
            location = {"onplayer","atvendor"},
            suffix_desc = "{Yellow}Druid Crafting Material\n",
        },
        -- Crafting Reagants Style and notifications: Ancient Decipherer
        {
            code = "ddd", 
            notify = "{red}Crafting Reagant: {gold}Ancient Decipherer",
            border = {255, 0, 0, 255}
        },
        -- Crafting Reagants Style and notifications: Socket Donut
        {
            code = "sdo",
            notify = "{red}Crafting Material: {name}",
            audio = "mid.mp3",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Socket Donut",
        },
        -- Crafting Reagants Style and notifications: Orb of Annointment
        {
            code = "um7",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {purple} Orb of Annointment {red}*{green}*{blue}*",
            border = {150,0,200,250},
            background = {255,255,255,250}
        },
        -- Crafting Reagants Style and notifications: Worldstone Shard
        {
            code = "wss",
            notify = "{Red}Crafting Reagant: {white}Worldstone Shard",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Worldstone Shard",
            audio = "mid.mp3"
        },
        {
            code = "wss",
            location = {"onplayer","atvendor"},
            prefix = "{white}Cube with Multi-Stocker to store\n{red}Crafting Material\n"
        },
        -- Crafting Reagants Style and notifications: Maple Leaf
        {
            code = "map",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Maple Leaf {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Maple Leaf",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Anvil Stone
        {
            code = "qqq",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Anvil Stone {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Anvil Stone",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Elixir
        {
            code = "elx",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Elixir {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Elixir",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Cookbook
        {
            code = "yyy",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Cookbook {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Cookbook",
            audio = "gong.mp3"
        },
        --Tooltips for Maple Leaf, Anvil Stone, Elixir, Cookbook
        {
            codes = {"map", "ggg", "elx", "yyy","ddd"},
            location = {"onplayer","atvendor"},
            prefix = "{white}Cube with Multi-Stocker to store\n{red} Rare Crafting Reagant \n"
        },
        -- Aura Stones notification
        {
            codes = {"an3", "an4", "an5", "an6", "an7", "an8", "an9"},
            notify = "{red}*{blue}*{green}*  {orange}Aura Stone {red}*{blue}*{green}*",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{red}{name}",
            audio = "tink.mp3"
        },
        -- Aura Stone Tooltips
        {
            code = "an3",
            location = {"onplayer","atvendor"},
            prefix = "{green} Lvl 10 Blessed Aim Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an4",
            location = {"onplayer","atvendor"},
            prefix = "{red} Lvl 15 Concentration Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an5",
            location = {"onplayer","atvendor"},
            prefix = "{purple} Lvl 20 Defiance Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an6",
            location = {"onplayer","atvendor"},
            prefix = "{yellow} Lvl 10 Vigor Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an7",
            location = {"onplayer","atvendor"},
            prefix = "{gray} Lvl 30 Thorns Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an8",
            location = {"onplayer","atvendor"},
            prefix = "{Gold} Lvl 21 Conviction Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        {
            code = "an9",
            location = {"onplayer","atvendor"},
            prefix = "{Blue} Lvl 15 Meditation Aura when equipped\n{white}Cube with any Amulet and a chipped gem to forge:\n {red}Rare Crafting Material\n"
        },
        -- Highlighting Uniques/Sets and adding notifications
            {   
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "0",
            notify = "{white} ** {gray}Normal: {gold}{name} {white}**",
            audio = "unique.mp3",
            border = {255,165,0,255}
        },
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "1",
            notify = "{white} ** {gray}Exceptional: {gold}{name} {white}**",
            audio = "unique.mp3",
            border = {255,165,0,255}
        },
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "2",
            notify = "{white} ** {gray}Elite: {gold}{name} {white}**",
            audio = "unique.mp3",
            border = {255,165,0,255}
        },
        {
            codes = {"rin","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "7",
            notify = "{red}*{green}*{blue} {gold}{name} {red}*{green}*{blue}",
            border = {255,0,0,255},
            audio = "other.mp3"
        },
        {
            codes = {"cm1","cm2","cm3","jew","cm4"},
            quality = "7",
            notify = "{red}*{green}*{blue} {gold}{name} {red}*{green}*{blue}",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {
            codes = "allitems",
            quality = "5",
            notify = "{white} ** {gray}{green}{name}{white} **",
            audio = "unique.mp3",
            border = {0,255,0,255}
        },
        -- Display Base type for Uniques and Sets on the ground
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            name_override = "{grey}[{rarity}]{gold}{name}"
        },
        {
            codes = "allitems",
            quality = "5",
            name_override = "{grey}[{rarity}]{green}{name}"
        },
        -- Mythical Uniques: Individual name strucutre for all mythicals to prevent clipping
        {
            code = "mrn",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Marksmen Bow", 
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "au9",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Amulet", 
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m01",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Marksmen Bow", 
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m02",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Odysseus Crossbow",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m03",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Titan's Maul",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m04",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Demonic Wand",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m05",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Soul Destroyer",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m06",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Gemstoned Armor",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m07",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Dimensional Shard",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m08",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Balanced Dagger",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m09",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Magic Blade",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m10",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Hemp Band",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m11",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Arcane Staff",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m12",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Seraphic Sceptre",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m13",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Scissors Suwayyah",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m14",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Ceremonial Dagger",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m15",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Dream Spirit",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m16",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Rapier",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },    
        {
            code = "m17",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Celestial Sceptre",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m18",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Death Blade",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m19",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Death Blade",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "dd1",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Death Blade",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "m20",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Diadem",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "m21",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Razor Axe",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m22",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Hellfire Sword",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m29",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Petrified Staff",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m30",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Ancient Bow",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m31",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Matriarchal Javelin",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m32",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Whale Hunter",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m33",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Ancient Shards",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m34",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Shillelagh",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
                            
            audio = "mythical.mp3"
        },
        {
            code = "m35",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Celestial Sword",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m36",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Mage Staff",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m37",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Katana",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m38",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            name_override = "Arreat's Hatchet",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m39",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Kagekiri",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "mam",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*\n",
            name_style = "Rainbow Group",
            prefix = "Mythical ",
            name_override = "Amulet",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        -- Coupon style and notification
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","03j","04j"},
            notify = "{gold}Normal Coupon: {white}{name}",  --- Normal Coupons
            border = {255,165,0,255},
            name_override = "{gray}Norm:{gold}{name}"
        },
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","13d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            notify = "{gold}Exceptional Coupon: {white}{name}", --- Exceptional Coupons
            border = {255,165,0,255},
            name_override = "{gray}Exc:{gold}{name}"
        },
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","13d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            audio = "other.mp3",
            filter_levels = "3-"
        },
        {
            codes = {"01e","02e","03e","04e","05e","06e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","17e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","40e","41e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","46h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},
            notify = "{gold}Elite Coupon: {white}{name}", --- Elite Coupons
            audio = "other.mp3",
            border = {255,165,0,255},
            name_override = "{gray}Elt:{gold}{name}"
        },
        -- S-Tier Coupons: SOJ, Death Fathom
        {
            codes = {"03j", "46h"},
            audio = "tink.mp3",
            border = {255,0,0,255},
            background = {255,255,255,255}, 
            name_override = "{name}",
            hide = false,
            filter_levels = "4-"
        },
        -- Highlight Class specific Magic/Rare Jewellery
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "4",
            notify = "Class Jewellery: {blue}{name}",
            border = {0,0,255,230}
        },
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "4",
            location = {"onplayer","atvendor"},
            suffix_desc = "{gray}Crafting Available: Check Akara's perfect gems for recipes{blue}\n"

        },
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "6",
            notify = "Class Jewellery: {yellow}{name}",
            border = {0,255,255,230}
        },
        -- Tooltip description for monster parts showing common drop locations
        {
            code = "hrt",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily in Cow Level and Maps \n Crafting Reagant\n"
        },
        {
            code = "brz",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Sand Leapers in Act 1, Ratmen in Act 3, and Maps \n Crafting Reagant\n"
        },
        {
            code = "jaw",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Skeleton Archers/Dark Rangers: Act 1 and Maps \n Crafting Reagant\n"
        },
        {
            code = "eyz",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Golems in Act 4, Act 5 Nihlathak's Domain, and Maps\n Crafting Reagant\n"
        },
        {
            code = "hrn",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Barlog in Act 4 and Maps\n Crafting Reagant\n"
        },
        {
            code = "tal",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Huntress' and Slinger's in Act 2 and Maps\n Crafting Reagant\n"
        },
        {
            code = "flg",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Fallen Shamen in Act 1 and Maps\n Crafting Reagant\n"
        },
        {
            code = "fng",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Arachs, Tomb Vipers, and Dune beasts in Act 2 and Maps\n Crafting Reagant\n"
        },
        {
            code = "qll",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Quill Rats in Act 1, Thorned Hulks in Act 3, and Maps\n Crafting Reagant\n"
        },
        {
            code = "sol",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Ghosts, Gloams, Goatmen in all Acts and Poppy Farm/Maps\n Crafting Reagant\n"
        },
        {
            code = "scz",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple} Doom Knights and Abyss Knights in Chaos Sanctuary Act 5, and Maps\n Found primarily from Ghoul Lords in Act 1 and 3,\n Crafting Reagant\n"
        },
        {
            code = "spe",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple} Primairly dropped from Zakarumite in Act 3, Over Lords and Coruplent in Act 4, and Maps \n Crafting Reagant\n"
        },
        {
            code = "zzz",
            location = "onplayer",
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple} Exclusively dropped in The Secret Cow Level. For steak recipes please consult Gordon Ramsey \n Crafting Reagant\n"
        },
        -- Tooltip information and filtering for Uber Keys -
        {
            codes = {"pk1", "pk2", "pk3"},
            notify = "{red}Pandemonium Key: {name}",
            background = {0, 0, 0, 200},
            border = {165, 55, 253, 255},
            audio = "gong.mp3"
        },
        {
            codes = {"pk1", "pk2", "pk3"},
            location = {"onplayer", "atvendor"},
            suffix_desc = "{white} Cube with the other two Uber keys and 1 normal key to create a Pandemonium Key Set: 1x1 inventory space \n",
        },
        -- Tooltip information for Body Armor showing available 2 socket Runewords
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Hot: {red}Tsu {gold}Ne {gray}Lvl: 55{blue} \n{gray}Prudence: {orange} Mal Tir {gray}Lvl: 49{blue} \n{gray}Mist: {green}Mo {red}Ya {gray}Lvl: 47{blue} \n{gray}Deception: {yellow}Sa {orange}Wa{gray} Lvl: 38\n{gray}Smoke: {white}Nef {orange}Lem {gray}Lvl: 37{blue} \n{gray}Wealth: {orange}To {red}Mi {gray}Lvl: 36{blue}\n{gray}Stealth: {white}Tal Eth {gray}Lvl: 17{blue}\n{gray}Darkness: {red}Ya {red}Mi {gray}Lvl: 15{blue}\n{gray}Fog: {red}Ki {red}Ri {gray}Lvl: 12{blue}\n{gray}Gold: {red}Ri N {gray}Lvl: 10{blue}\n {gray}Greed: {white}Yo Ku {gray}Lvl: 9{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Body Armor showing available 3 socket Runewords
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 40 }, -- Char Level 40 or below
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Maiden: {yellow}O {orange}To Me {gray}Lvl: 36{blue}\n{gray}Impetuous: {red}Mi {Yellow}Sa {Orange}To {gray}Lvl: 36{blue}\n{gray}Praise: {orange}Ho {orange}Me {orange}Ru {gray}Lvl: 34{blue}\n{gray}Captive: {orange}Ho {red}Ri{white} Yo {gray}Lvl: 31{blue}\n{gray}Peace: {orange}Shael {white}Thul Amn {gray}Lvl: 29{blue}\n{gray}Hustle: {white}Shael Ral Eld {gray}Lvl: 29{blue}\n{gray}Oath: {red}Ki{white} Ka I {gray}Lvl: 29{blue}\n{gray}Myth: {orange}Hel{white} Amn Nef {gray}Lvl: 25{blue}\n{gray}Exuberance: {red}A{white} I Ka {gray}Lvl: 17{blue}\n{gray}Famine: {red}Ki Ki{white} N {gray}Lvl: 10{blue}\n{gray}Forefeel: {white}Yo Ka N {gray}Lvl: 9{blue}\n{gray}Evolution: {white}Shi N Ka {gray}Lvl: 6{blue}\n",
            sockets = "3",
        },
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 41 }, -- Char Level 41 or above
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Enigma:{purple} Jah{white} Ith {purple}Ber {gray}Lvl: 65{blue}\n{gray}Dragon:{purple}Sur Lo{orange} Sol {gray}Lvl: 61{blue}\n{gray}Nightgown: {orange}Ne {green}Ma {red}Ki {gray}Lvl: 55{blue}\n{gray}Fox: {red}Ki {red}Tsu {orange}Ne {gray}Lvl: 55{blue}\n{gray}Smoke: {gold}Ke {orange}Mu {red}Ri {gray}Lvl: 54{blue}\n{gray}Principle: {white}Ral {purple}Gul{white} Eld {gray}Lvl: 53{blue}\n{purple}Rain: {white}Ort {purple}Mal{white} Ith {gray}Lvl: 49{blue}\n{gray}Duress: {orange}Shael {orange}Um{white} Thul {gray}Lvl: 47{blue}\n{gray}Bone: {white}Sol {orange}Um {orange}Um {gray}Lvl: 47{blue}\n{gray}Daylight: {green}Hi {orange}Ru {green}Ma {gray}Lvl: 46{blue}\n{gray}Indominable: {yellow}Ra{white} N{green}Ma {gray}Lvl: 45{blue}\n{gray}Abundant: {orange}Ho{white} U{green}Fu {gray}Lvl: 44{blue}\n{gray}Harmony: {orange}Wa {green}Se{white} I {gray}Lvl: 43{blue}\n{gray}Fossil of the Sun: {white}Ka {green}Se {red}Ki {gray}Lvl: 43{blue}\n{gray}Lionheart: {orange}Hel {orange}Lum {orange}Fal {gray}Lvl: 41{blue}",
            sockets = "3",
        },
        -- Tooltip information for Body Armor showing available 4 socket Runewords
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 40 }, -- Char Level 40 or below
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Sorrow: {white}Ka {green}Na{white} Shi {red}Mi {gray}Lvl: 40{blue}\n{gray}Animal Friend: {green}Na{white} U Shi Ka {gray}Lvl: 40{blue}\n{gray}Journey: {red}Ri{white} Yo {orange}Ko{white} U {gray}Lvl: 39{blue}\n{gray}Healthy: {yellow}Ke{white} N {orange}Ko{white} U {gray}Lvl: 39{blue}\n{gray}Fortune: {orange}Ko{white} U U U {gray}Lvl: 39{blue}\n{gray}Efficiency: {orange}Ko{white} U {red}Ri {red}Tsu {gray}Lvl: 39{blue}\n{gray}Illustrious: {red}A {yellow}Yu{white} Ka {orange}Wa {gray}Lvl: 38{blue}\n{gray}Trust: {white}Shi N Ra I {gray}Lvl: 28{blue}\n{gray}Eneternity: {yellow}E{white} I {yellow}E{white} N {gray}Lvl: 26{blue}\n{gray}Beauty: {white}U {red}Tsu{white} Ku Shi {gray}Lvl: 19{blue}\n{gray}Insanity: {red}Ki{white} Yo U {red}Ki {gray}Lvl: 10{blue}\n",
            sockets = "4",
        },
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 41 }, -- Char Level 41 or above
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Chains of Honor: {orange}Dol {orange}Um {purple}Ber {purple}Ist {gray}Lvl: 63{blue}\n{gray}Bramble: {white}Ral {purple}Ohm {purple}Sur{white} Eth {gray}Lvl: 61{blue}\n{gray}Gold Scarab: {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}Lvl: 60{blue}\n{gray}Fortitude: {white}El {orange}Sol {orange}Dol {purple}Lo {gray}Lvl: 59{blue}\n{gray}Transformation: {purple}He{white} N Shi N {gray}Lvl: 59{blue}\n{gray}Unknown: {red}Mi/Ri/Ki {red}Chi {purple}Su{white} U {gray}Lvl: 57{blue}\n{gray}Lynx: {red}Ya {green}Ma {gold}Ne {orange}Ko {gray}Lvl: 55{blue}\n{gray}Able: {orange}Yu{white} U {gold}No{white} U {gray}Lvl: 48{blue}\n{gray}Question: {white}Shi {red}Tsu {green}Mo{white} N {gray}Lvl: 47{blue}\n{gray}Stone: {orange}Shael {orange}Um {orange}Pul {orange}Lum {gray}Lvl: 47{blue}\n{gray}Stomach Ache: {green}Fu{white} Ku {red}Tsu{white} U {gray}Lvl: 44{blue}\n",
            sockets = "4",
        },
        -- Tooltip information for Body Armor showing available 5 socket Runewords
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Gold Scarab: {blue}Jewel {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}Lvl: 60{blue}\n{gray}Wooden Colossus: {blue}Wood {orange}Ko {gold}Ro {yellow}Sa {purple}Su {gray}Lvl: 60{blue}\n{gray}Horizon: {red}Chi {purple}He{white} I {green}Se{white} N {gray}Lvl: 59{blue}\n{gray}Jindujun: Su {orange}Ha {yellow}Ra{white} Shi I {gray}Lvl: 57{blue}\n{gray}Zenith: {gold}Te{white} N {red}Chi{white} Yo U {gray}Lvl: 50{blue}\n{gray}Pear: {green}Hi {orange}To {gold}Te {green}Na{white} Shi {gray}Lvl: 50{blue}\n{gray}Phoenix: {green}Fu{white} Shi {red}Chi{white} Yo U {gray}Lvl: 44{blue}\n{gray}Lionheart: {white}Ka I {yellow}O {green}Na{white} I {gray}Lvl: 40{blue}\n{gray}Pride: {orange}Ho {orange}Ko {yellow}Ra{white} Shi {yellow}Sa {gray}Lvl: 39{blue}\n",
            sockets = "5",
        },
        -- Tooltip information for Body Armor showing available 6 socket Runewords
        {
            codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}Gold Scarab: {blue}Jewel Jewel {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}Lvl: 60{blue}\n{gray}Insight: {red}Mi {purple}Nu{white} Ku {red}Chi{white} Ka {yellow}Ra {gray}Lvl: 60{blue}\n{gray}Eternal Reign: {gold}Te{white} N Ka {purple}Wo {orange}To {orange}Ru {gray}Lvl: 60{blue}\n{gray}Golden Dragon: {red}Ki{white} N {gold}No {red}Ri {yellow}Yu{white} U {gray}Lvl: 48{blue}\n{gray}Dark Star: {green}Hi{white} Ka {red}Ri {gold}No {orange}Ke{white} N {gray}Lvl: 48{blue}\n{gray}Courage: {white}Ka {red}Mi {red}Ya {orange}Ta{white} I {red}Chi {gray}Lvl: 35{blue}\n{gray}Ascend: {white}Shi Yo {red}Ri {yellow}Yu {yellow}Ke{white} N {gray}Lvl: 24{blue}\n",
            sockets = "6",
        },
        -- Tooltip information for Gloves showing available 2 socket Runewords
        {
            codes = {"2hg","2lg","2mg","2tg","4hg","4lg","4mg","4tg","hgl","irg","lgl","mgl","tgl","ulg","umg","utg","vhg","vgl","xhg","xig","xlg","xmg","xtg","ylg","yhg","yig","ymg","ytg","uvg","vg1"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc ="{gray}Swamp: {purple}Nu {green}Ma {gray}Lvl: 60{blue}\n{gray}Mist: {green}Mo {red}Ya {gray}Lvl: 47{blue}\n{gray}Dance: {green}Ma {white}I {gray}Lvl: 45{blue}\n{gray}Authority: {yellow}Ke {green}Ni {gray}Lvl: 42{blue}\n{gray}Spring: {orange}Ha Ru {gray}Lvl: 39{blue}\n{gray}Deception: {yellow}Sa {orange}Wa {gray}Lvl: 38{blue}\n{gray}Wealth: {orange}To {red}Mi {gray}Lvl: 36{blue}\n{gray}Rain: {red}A {orange}Me {gray}Lvl: 32{blue}\n{gray}Dream: {yellow}Yu {orange}Me {gray}Lvl: 32{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Belts showing available 2 socket Runewords
        {
            codes = {"lbl","vbl","mbl","tbl","hbl","msb","3lb","3vb","3mb","3tb","3hb","zlb","zvb","zmb","ztb","zhb","xms","5lb","5vb","5mb","5tb","5hb","alb","avb","bmb","atb","ahb","yms","ulc","uvc","umc","utc","uhc","m10"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc ="{gray}Navel: {purple}He {gold}So: {gray}: Lvl: 59\n {gray}Mist: {green}Mo {red}Ya {gray}Lvl: 47{blue}\n{gray}Dance: {green}Ma{white} I: {gray}Lvl: 45{blue}\n{gray}Spring: {orange}Ha {orange}Ru {gray}Lvl: 39{blue}\n{gray}Wealth: {orange}To {red}Mi {gray}Lvl: 36{blue}\n{gray}Rain: {red}A {orange}Me {gray}Lvl: 32{blue}\n{gray}Dream: {yellow}Yu {orange}Me {gray}Lvl: 32{blue}\n{gray}Autumn: {red}A {red}Ki {gray}Lvl: 17{blue}\n{gray}Gold: {red}Ki{white} N {gray}Lvl: 10{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Boots showing available 2 socket Runewords
        {
            codes = {"lbt","vbt","mbt","tbt","hbt","dbt","2lb","2vb","2mb","2tb","2hb","xlb","xvb","xmb","xtb","xhb","xbt","4lb","4vb","4mb","4tb","4hb","ylb","yvb","ymb","ytb","yhb","ybt","ulb","uvb","umb","utb","uhb"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Skank: {purple}Su {gold}Ne {gray}Lvl: 57{blue}\n{gray}Mist: {green}Mo {red}Ya {gray}Lvl: 47{blue}\n{gray}Trip: {orange}Ta {green}Hi {gray}Lvl: 46{blue}\n{gray}Dance: {green}Ma{white} I {gray}Lvl: 45{blue}\n{gray}Summer: {green}Na {red}Tsu {gray}Lvl: 40{blue}\n{gray}Spring: {orange}Ha {orange}Ru {gray}Lvl: 39{blue}\n{gray}Rain: {red}A {orange}Me {gray}Lvl: 32{blue}\n{gray}Kick: {yellow}Ke {red}Ri {gray}Lvl: 24{blue}\n{gray}Autumn: {red}A {red}Ki {gray}Lvl: 17{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Helms showing available 2 socket Runewords
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Hawk: {orange}Ta{white} Ka {gray}Lvl: 35{blue}\n{gray}Dream: {yellow}Yu {red}Me {gray}Lvl: 32{blue}\n{gray}Lore: {white}Ort Sol {gray}Lvl: 27{blue}\n{gray}Wisdom: {red}Chi {yellow}E {gray}Lvl: 26{blue}\n{gray}Nadir: {white}Nef Tir {gray}Lvl: 13{blue}\n{gray}Hades: {white}Yo {red}Mi {gray}Lvl: 13{blue}\n{gray}Hunt: {white}Ka {red}Ri {gray}Lvl: 12{blue}\n{gray}Fog: {red}Ki {red}Ri {gray}Lvl: 12{blue}\n{gray}Greed: {white}Yo Ku {gray}Lvl: 9{blue}\n{gray}Feel: {white}Ka N {gray}Lvl: 6{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Helms showing available 3 socket Runewords
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 44 }, -- Char Level 39 or lower
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Maiden: {yellow}O {orange}To {orange}Me {gray}Lvl: 36{blue}\n{gray}Jealousy: {white}Shi {red}Tsu {orange}To {gray}Lvl: 36{blue}\n{gray}Temper: {orange}Shael{white} Io Ral {gray}Lvl: 35{blue}\n{gray}Ground: {orange}Shael{white} Io Ral {gray}Lvl: 35{blue}\n{gray}Earth: {orange}Shael{white} Io Thul {gray}Lvl: 35{blue}\n{gray}Cure: {orange}Shael{white} Io Tal {gray}Lvl: 35{blue}\n{gray}Bulwark: {orange}Shael{white} Io Sol {gray}Lvl: 35{blue}\n{gray}Richesdotcom: {yellow}P.Topaz {orange}Ru {yellow}P.Topaz {gray}Lvl: 34{blue}\n{gray}Psychic: {red}A {red}Ki {yellow}Ra {gray}Lvl: 28{blue}\n{gray}Cherry Blossom: {yellow}Sa{white} Ku{yellow}Ra {gray}Lvl: 28{blue}\n{gray}Radiance: {white}Nef Sol Ith {gray}Lvl: 27{blue}\n{gray}Royalty: {red}A {yellow}E{white} Ka {gray}Lvl: 26{blue}\n{gray}Reason: {red}Ri {yellow}Yu{white} U {gray}Lvl: 23{blue}\n{gray}Knowledge: {red}Chi{white} Shi {red}Ki {gray}Lvl: 20{blue}\n{gray}Forefeel: {white}Yo Ka N {gray}Lvl: 9{blue}\n",
            sockets = "3"
        },
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = ">=", value = 45}, -- Char Level 40 or higher
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Metamorphosis: {orange}Io {purple}Cham {orange}Fal {gray}Lvl: 67{blue}\n{gray}Dream: {orange}Io {purple}Jah {orange}Pul {gray}Lvl: 65{blue}\n{gray}Peace: He{white} I {orange}Wa {gray}Lvl: 59{blue}\n{gray}Discontent: {green}Fu {purple}He{white} I {gray}Lvl: 59{blue}\n{gray}Abandon: {purple}Su {gold}Te {orange}Ru {gray}Lvl: 57{blue}\n{gray}Flickering Flame: {white}Nef {orange}Pul {purple}Vex {gray}Lvl: 55{blue}\n{gray}Thought: {white}Shi {gold}So{white} U {gray}Lvl: 52{blue}\n{gray}Spirit: {orange}Ko {orange}Ko {gold}Ro {gray}Lvl: 51{blue}\n{gray}Delirium: {orange}Lem {orange}Ist {orange}Io {gray}Lvl: 51{blue}\n{gray}Radiance: {green}Hi{white} Ka {orange}Ru {gray}Lvl: 46{blue}\n{gray}One: {green}Hi {orange}To {red}Tsu {gray}Lvl: 46{blue}\n{gray}Wisdom: {orange}Pul{white} Ith Eld {gray}Lvl: 45{blue}\n",
            sockets = "3"
        },
        -- Tooltip information for all Shields showing avaiable 2 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Splendor: {white}Eth {orange}Lum {gray}Lvl: 37{blue}\n{gray}Rhyme: {orange}Shael{white} Eth {gray}Lvl: 29{blue}\n{gray}Rhino: {yellow}Sa{white} I {gray}Lvl: 22{blue}\n{gray}Gold: {red}Ki{white} N {gray}Lvl: 10{blue}\n{gray}Luck: {white}U N {gray}Lvl: 6{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Shields showing avaiable 3 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = "<=", value = 49}, -- Char Level 49 or lower
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Sanctuary: {orange}Ko {orange}Ko {purple}Mal {gray}LvL: 49{blue}\n{gray}Woodsman: {red}Ki {orange}Ko {red}Ri {gray}Lvl: 39{blue}\n{gray}Daylight: {green}Hi {orange}Ru {green}Ma {gray}Lvl: 46{blue}\n{gray}Sunny: {yellow}Sa {green}Ni {white}I {gray}Lvl: 43{blue}\n{gray}Secret: {white}Shi {green}Ni {orange}Ti {gray}Lvl: 42{blue}\n{gray}Pillar of Faith: {orange}Ha {white}Shi {yellow}Ra {gray}Level: 39{blue}\n{gray}Conquest: {white}Shi Shi {yellow}O {gray}Level :30{blue}\n{gray}Ancient's Pledge: {white}Ral Ort Tal {gray}Lvl: 21{blue}\n",
            sockets = "3"
        },
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = ">=", value = 50}, -- Char Level 50 or higher
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Dream: {orange}Io {purple}Jah {orange}Pul {gray}Lvl: 65{blue}\n{gray}Dragon: Sur Lo {white}Sol {gray}Lvl: 61{blue}\n{gray}Sunlight: {blue}Sun {orange}Ko {white}U {gray}Lvl: 60{blue}\n{gray}Dodge: {white}Ka {orange}Wa {purple}Su {gray}Lvl: 57{blue}\n{gray}Abandon: {purple}Su {gold}Te {orange}Ru {gray}Lvl: 57{blue}\n{gray}Rift: {red}Ki {gold}Re {red}Tsu {gray}Lvl: 56{blue}\n",
            sockets = "3"
        },
        -- Tooltip information for all Shields showing avaiable 4 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}Phoenix: {purple}Vex Vex Lo Jah {gray}Lvl: 65{blue}\n{gray}Dread: {yellow}O {gold}So Re {orange}Ru {gray}Lvl: 56{blue}\n{gray}Dome: {green}Ma {orange}Ru {red}Ya {gold}Ne {gray}Lvl: 55{blue}\n{gray}Medicine: {red}Ya {white}Ku {green}Hi {white}N {gray}Lvl: 46{blue}\n{gray}Glory: {yellow}E {white}I {orange}Ko {white}U {gray}Lvl: 39{blue}\n{gray}Faith: {white}Shi N {orange}Ko {white}U {gray}Lvl: 39{blue}\n{gray}Temptation: {yellow}Wa {white}U {orange}Wa {white}Ku {gray}Lvl: 38{blue}\n{gray}Achieve: {white}Ka {red}Chi {orange}To Ru {gray}Lvl: 36{blue}\n{gray}Spirit: {white}Tal Thul Ort Amn {gray}Lvl: 25{blue}\n{gray}Fortress: {white}Yo U {yellow}Sa {white}I {gray}Lvl: 22{blue}\n{gray}Beauty: {white}U {red}Tsu {white}Ku Shi {gray}Lvl: 19{blue}\n",
            sockets = "4"
        },
        -- In game notification for all monster parts
        {
            codes = {"qll", "hrt", "brz", "jaw", "eyz", "hrn", "tal", "flg", "fng","sol", "scz", "spe", "zzz"},
            location = "onground",
            notify = "{red}Crafting Reagant: {white}{name}",
            border = {200, 150, 0, 255},
        },
        -- In game notification for all perfect gems
        {
            codes = {"gvb", "gyb", "gbb", "ggb", "grb", "gwb", "skb", "gbk"},
            notify = "{name}",
            audio = "mid.mp3",
            name_override = "{name}",
            border = {200, 150, 0, 255}
        },
        -- In game notification for all high LOD rune drops
            {   
            code = "23l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Mal  {red}*{blue}*{green}*",
            name_override = "{black}Mal Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "24l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ist   {red}*{blue}*{green}*",
            name_override = "{black}Ist Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "25l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Gul   {red}*{blue}*{green}*",
            name_override = "{black}Gul Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "26l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Vex   {red}*{blue}*{green}*",
            name_override = "{red}Vex Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "27l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ohm  {red}*{blue}*{green}*",
            name_override = "{red}Ohm Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "28l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Lo   {red}*{blue}*{green}*",
            name_override = "{red}Lo Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "29l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Sur   {red}*{blue}*{green}*",
            name_override = "{red}Sur Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "30l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ber  {red}*{blue}*{green}*",
            name_override = "{red}Ber Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "31l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Jah   {red}*{blue}*{green}*",
            name_override = "{red}Jah Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "32l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Cham   {red}*{blue}*{green}*",
            name_override = "{red}Cham Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "33l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Zod   {red}*{blue}*{green}*",
            name_override = "{red}Zod Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        -- In game notification for all high ES rune drops (Gold + Purple)   
        {
            codes = {"r36","r37","r38","r39","r40","r41","r42"},
            notify = "{Red}Gold Rune Drop{gold}: {name}",
            border = {255,215,0,255},
            background = {0,0,0,255},
            audio = "mid.mp3"
        },
        {   
            code = "r43",
            notify = "{orange}Purple ESR Rune: {name}",
            name_override = "{purple}Su Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r44",
            notify = "{orange}Purple ESR Rune: {name}",
            name_override = "{purple}He Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r45",
            notify = "{orange}Purple ESR Rune: {name}",
            name_override = "{purple}Nu Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r46",
            notify = "{orange}Purple ESR Rune: {name}",
            name_override = "{purple}Wo Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r50",
            notify = "{orange}Purple ESR Rune: {name}",
            name_override = "{purple}Null Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        -- Maps Tier 1
            {   
            code = "z01",
            notify = "Tier 1 Map: {white}Cellars of Pain",
            name_override = "Cellar of Pain (Tier 1)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z02",
            notify = "Tier 1 Map: {white}Chasm of Horrors",
            name_override = "Chasm of Horrors (Tier 1)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z03",
            notify = "Tier 1 Map: {white}Crypt of Damnation",
            name_override = "Crypt Of Damnation (Tier 1)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z04",
            notify = "Tier 1 Map: {white}Necropolis",
            name_override = "Necropolis (Tier 1)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 2
            {   
            code = "z05",
            notify = "Tier 2 Map: {white}Ancient Tomb",
            audio = "map.mp3",
            name_override = "Ancient Tomb (Tier 2)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z06",
            notify = "Tier 2 Map: {white}Chaos Rift",
            audio = "map.mp3",
            name_override = "Chaos Rift (Tier 2)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z07",
            notify = "Tier 2 Map: {white}Infested Lair",
            audio = "map.mp3",
            name_override = "Infested Lair (Tier 2)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z08",
            notify = "Tier 2 Map: {white}Labyrinth of Suffering",
            audio = "map.mp3",
            name_override = "Labyrinth of Suffering (Tier 2)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 3
            {   
            code = "z09",
            notify = "Tier 3 Map: {white}Decaying Depths",
            audio = "map.mp3",
            name_override = "Decaying Depths (Tier 3)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z10",
            notify = "Tier 3 Map: {white}Endless Abyss",
            audio = "map.mp3",
            name_override = "Endless Abyss (Tier 3)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z11",
            notify = "Tier 3 Map: {white}Frozen Wastes",
            audio = "map.mp3",
            name_override = "Frozen Wastes (Tier 3)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z12",
            notify = "Tier 3 Map: {white}Twisted Maze",
            audio = "map.mp3",
            name_override = "Twisted Maze (Tier 3)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 4
            {   
            code = "z13",
            notify = "Tier 4 Map: {white}Cursed Ossuary",
            audio = "map.mp3",
            name_override = "Cursed Ossuary (Tier 4)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z14",
            notify = "Tier 4 Map: {white}Infernal Nexus",
            audio = "map.mp3",
            name_override = "Infernal Nexus (Tier 4)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z15",
            notify = "Tier 4 Map: {white}Reliquary of Souls",
            audio = "map.mp3",
            name_override = "Reliquary of Souls (Tier 4)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z16",
            notify = "Tier 4 Map: {white}Shrine of Destruction",
            audio = "map.mp3",
            name_override = "{white}Shrine of Destruction (Tier 4)",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 5
            {   
            code = "z17",
            notify = "Tier 5 Map: {white}Eye of the Storm",
            audio = "t5_map.mp3",
            name_override = "{black}Eye of the Storm",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z18",
            notify = "Tier 5 Map: {white}Ice Crown Citadel",
            audio = "t5_map.mp3",
            name_override = "{black}Ice Crown Citadel",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z19",
            notify = "Tier 5 Map: {white}The Sanctum of the Dead",
            audio = "t5_map.mp3",
            name_override = "{black}The Sanctum of the Dead",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z20",
            notify = "Tier 5 Map: {white}The Reliquary of False Light",
            audio = "t5_map.mp3",
            name_override = "{black}The Reliquary of False Light",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        -- Tooltips on ESR Runes (Thanks to Quan + Squid)
        {
            code="r01",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 White Rune Points when bagged{orange}\n"
        },
        {
            code="r02",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 White Rune Points when bagged{orange}\n"
        },
        {
            code="r03",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 White Rune Points when bagged{orange}\n"
        },
        {
            code="r04",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 White Rune Points when bagged{orange}\n"
        },
        {
            code="r05",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 White Rune Points when bagged{orange}\n"
        },
        {
            code="r06",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 White Rune Points when bagged{orange}\n"
        },
        {
            code="r07",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 White Rune Points when bagged{orange}\n"
        },
        {
            code="r08",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r09",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r10",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r11",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r12",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r13",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r14",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Red Rune Points when bagged{orange}\n"
        },
        {
            code="r15",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r16",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r17",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r18",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r19",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r20",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r21",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Yellow Rune Points when bagged{orange}\n"
        },
        {
            code="r22",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r23",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r24",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r25",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r26",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r27",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r28",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Orange Rune Points when bagged{orange}\n"
        },
        {
            code="r29",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r30",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r31",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r32",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r33",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r34",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r35",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Green Rune Points when bagged{orange}\n"
        },
        {
            code="r36",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r37",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r38",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r39",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r40",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r41",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r42",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Gold Rune Points when bagged{orange}\n"
        },
        {
            code="r43",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Purple Rune Points when bagged{orange}\n"
        },
        {
            code="r44",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Purple Rune Points when bagged{orange}\n"
        },
        {
            code="r45",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Purple Rune Points when bagged{orange}\n"
        },
        {
            code="r46",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Purple Rune Points when bagged{orange}\n"
        },
        {
            code="r50",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Purple Rune Points when bagged{orange}\n"
        },
        -- Tooltips on LoD Decals
        {
            code="01l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Low Rune Points when bagged{white}\n"
        },
        {
            code="02l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Low Rune Points when bagged{white}\n"
        },
        {
            code="03l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Low Rune Points when bagged{white}\n"
        },
        {
            code="04l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Low Rune Points when bagged{white}\n"
        },
        {
            code="05l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Low Rune Points when bagged{white}\n"
        },
        {
            code="06l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Low Rune Points when bagged{white}\n"
        },
        {
            code="07l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Low Rune Points when bagged{white}\n"
        },
        {
            code="08l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 Low Rune Points when bagged{white}\n"
        },
        {
            code="09l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 Low Rune Points when bagged{white}\n"
        },
        {
            code="10l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 Low Rune Points when bagged{white}\n"
        },
        {
            code="11l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 Low Rune Points when bagged{white}\n"
        },
        {
            code="12l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 Mid Rune Points when bagged{white}\n"
        },
        {
            code="13l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 Mid Rune Points when bagged{white}\n"
        },
        {
            code="14l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 Mid Rune Points when bagged{white}\n"
        },
        {
            code="15l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 Mid Rune Points when bagged{white}\n"
        },
        {
            code="16l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 Mid Rune Points when bagged{white}\n"
        },
        {
            code="17l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 Mid Rune Points when bagged{white}\n"
        },
        {
            code="18l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 Mid Rune Points when bagged{white}\n"
        },
        {
            code="19l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 Mid Rune Points when bagged{white}\n"
        },
        {
            code="20l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 Mid Rune Points when bagged{white}\n"
        },
        {
            code="21l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 Mid Rune Points when bagged{white}\n"
        },
        {
            code="22l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 Mid Rune Points when bagged{white}\n"
        },
        {
            code="23l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 High Rune Points when bagged{white}\n"
        },
        {
            code="24l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 High Rune Points when bagged{white}\n"
        },
        {
            code="25l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 High Rune Points when bagged{white}\n"
        },
        {
            code="26l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 High Rune Points when bagged{white}\n"
        },
        {
            code="27l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 High Rune Points when bagged{white}\n"
        },
        {
            code="28l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 High Rune Points when bagged{white}\n"
        },
        {
            code="29l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 High Rune Points when bagged{white}\n"
        },
        {
            code="30l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 High Rune Points when bagged{white}\n"
        },
        {
            code="31l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 High Rune Points when bagged{white}\n"
        },
        {
            code="32l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 High Rune Points when bagged{white}\n"
        },
        {
            code="33l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 High Rune Points when bagged{white}\n"
        },
        -- Socket info for ground items
            {   
            codes = {"kgk","cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            location = {"onground"},
            suffix = " {lilac}[{sockets}]"
        }, 
        -- Item tooltip Item shows (available/max) sockets for it's ilvl - Thank you Khaos!
        {
            codes = "allitems",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            suffix_desc = "{gray}Sockets: {dark green}{sockets}{white}/{green}{maxsock} \n{blue}",
            sockets = "0+",
            maxsock = false
        },
        -- Item tooltip - Item has maximum sockets for it's ilvl
        {
            codes = "allitems",
            location = {"onplayer", "atvendor", "e/quipped", "onground"},
            suffix_desc = "{purple}Max Sockets: {green}{sockets}{white}/{green}{maxsock}\n{blue}",
            sockets = "1+",
            maxsock = true
        },
    }
}
