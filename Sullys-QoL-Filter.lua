--- Filter Title: Sully's Quality of Life Filter
--- Filter Type: MultiStrict
--- Filter Description: PoE Themed with custom drop sounds, automatic filtering as you level, adjustable strictness, and many QoL Feautres
--- Filter Link: 
return {
    reload = "{white}Sully's Quality of Life Filter {purple}v0.1", -- **********   Big shout out to Squid and PlausibleSheep because this filter wouldn't exist without me plagiarizing their filters, features, and logic. They put in the hard work, I'm a hack.   ****************
    language = "enUS",
    filter_titles = {"Leveling","Strict","Very-Strict","Uber-Strict"},
    audioPlayback = true,
    debug = false,
    allowOverrides = true,
    filter_level = 4,
    rules = {
    
    --- Hiding small gold piles based on level
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
            codes = {"cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "2",
            sockets ="1-",
            pstat = { index = 12, op = ">=", value = 10 },
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },

    -- Hiding items after level 20 (All magic Weapons/Armor - 2 lowest postions - Chipped gems)
        {
            codes = {"cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
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

    -- Strict: Hiding low tier LoD decals, Orange or below ESR runes, non-class magic jewelery
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l"}, -- Hiding Low Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        {
            codes = {"r01","r02","r03","r04","r05","r08","r09","r10","r11","r12","r15","r16","r17","r18","r19","r20","r21"}, -- Hiding White, Yellow, and Orange ESR runes
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        {
            codes = {"rng","amu"}, -- Hiding non-class based rings and amulets
            quality = "4-",
            hides = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3,
        },
    -- Very Strict: Hiding Mid or lower LoD Decals, Orange or lower ESR runes, all magic jewelry/large + grand charms/jewels, all normal quality Unique weapons/armor, all normal/exceptional set items, 25% rejuvs
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, -- Hiding Low and Mid Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        {
            codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"}, -- Hiding White, Yellow, and Orange ESR runes
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        {
            codes = {"rng","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3","jew"}, 
            quality = "4",
            hide = true, -- Hiding all magic jewelry, large and grand charms, jewels
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =3
        },
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "0",
            hide = true, -- Hiding all Normal quality Unique weapons/armor
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        {
            code = "rvs", -- Hiding 25% rejuvs
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        {
            codes = "allitems",
            quality = "5",
            rarity = "1-",
            hide = true, -- Hiding all Normal/Exceptional Set items
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        {
            codes = {"gzv", "gly", "glb", "glg", "glr", "glw", "skl", "gzk"}, -- Hiding flawless gems
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3

        },
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, -- Hide arrows/bolts
            quality = "4-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
    -- Uber Strict: Hiding Green or lower ESR runes, Normal/Exceptional uniques/armor, all Set Items, ALL rares except, charms, jewelry, jewels, all superior's bases except mythical, anyhing gem below perfcet, ancient decipherer
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, -- Hiding Low and Mid Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"r01","r02","r03","r04","r05","r06","r08","r09","r10","r11","r12","r13","r15","r16","r17","r18","r19","r20","r22","r23","r24","r25","r26","r27","r28", "r29", "r30", "r31","r32","r33","r34","r35"}, -- Hiding White, Yellow, Orange, and Green ESR runes
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "1-",
            hide = true, -- Hiding all Normal and Exceptional quality Unique weapons/armor
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = "allitems",
            quality = "5",
            hide = true, -- Hiding all Set items
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"rin","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3","jew"}, -- Hiding all magic jewelry, large and grand charms, jewels
            quality = "4",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =4
        },
        {
            codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "3-",
            hide = true, --Hiding all non mythical superior bases
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 6,
            sockets = "0",
            hide = true, -- hiding all zero socket rares
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"gzv","gpv","gly","gpy","glb", "gpb", "glg", "gpg", "glr", "gpr", "glw", "gpw", "skl","skz", "gzk", "gpk"}, -- Hiding non-perfect gems
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            code = "rvs", -- Hiding 25% rejuvs
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, -- Hide arrows/bolts
            quality = "4-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        {   
        code = "ddd", -- Hide ancient decipherers
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
            notify = "{Red}Crafting Reagant: {purple} D-Stone",
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

    -- Crafting Reagants Style and notifications
        {
            code = "ddd", -- Ancient Decipherer
            notify = "{Red}Crafting Reagant: {gold} Ancient Decipherer",
            location = {"onplayer","atvendor","onground"},
            prefix_desc = "{white}Cube with Multi-Stocker to store\n {red}Crafting Reagant \n",
            border = {255, 0, 0, 255}
        },
    -- Socket Donut style and notification
        {
            code = "sdo",
            notify = "{red}Crafting Material: {name}",
            audio = "mid.mp3",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Socket Donut",
        },
        
    -- Orb of Annointment Style and notification
        {
            code = "um7",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {purple} Orb of Annointment {red}*{green}*{blue}*",
            border = {150,0,200,250},
            background = {255,255,255,250}
        },
        
        {
            code = "wss",
            notify = "{Red}Crafting Reagant: {white}Worldstone Shard",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black} Worldstone Shard",
            audio = "mid.mp3"
        },
        {
          code = "wss",
          location = {"onplayer","atvendor"},
          prefix = "{white}Cube with Multi-Stocker to store\n{red}Crafting Material\n"
        },
        {
            code = "map",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Maple Leaf {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Maple Leaf",
            audio = "gong.mp3"
        },
        
        {
            code = "ggg",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Anvil Stone {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Anvil Stone",
            audio = "gong.mp3"
        },
       
        {
            code = "elx",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Elixir {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Elixir",
            audio = "gong.mp3"
        },
      
        {
            code = "yyy",
            notify = "{red}*{green}*{blue}* {red}Rare Crafting Reagant: {gold} Cookbook {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}Cookbook",
            audio = "gong.mp3"
        },
        {
            codes = {"map", "ggg", "elx", "yyy"},
            location = {"onplayer","atvendor"},
            prefix = "{white}Cube with Multi-Stocker to store\n{red} Rare Crafting Reagant \n"
        },
        {
            codes = {"an3", "an4", "an5", "an6", "an7", "an8", "an9"}, -- Aura Stones
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
            notify = "{red}*{green}*{blue} {gray}{rarity}{gold}{name} {red}*{green}*{blue}",
            border = {255,0,0,255},
            sound = "uniques.mp3"
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

    -- Mythical Uniques
        {
            codes = {"7wd","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","mam","mrn","m10","m06","m20","m15"},
            quality = "7",
            notify = "{red}*{green}*{blue}*{purple}* {white}MYTHICAL UNIQUE {red}*{green}*{blue}*{purple}*",
            name_style = "Rainbow Group",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            suffix = " {lilac}[{sockets}]",
            audio = "mythical.mp3"
        },
    -- Coupon style and notification
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","03j","04j"},
            notify = "{gold}Normal Coupon: {white}{name}", 
            audio = "other.mp3",
            border = {255,165,0,255},
            name_override = "{rarity}{name}"
        },
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","13d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            notify = "{gold}Exceptional Coupon: {white}{name}", 
            audio = "other.mp3",
            border = {255,165,0,255},
            name_override = "{rarity}{name}"
        },
        {
            codes = {"01e","02e","03e","04e","05e","06e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","17e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","40e","41e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","46h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},
            notify = "{gold}Elite Coupon: {white}{name}", 
            audio = "other.mp3",
            border = {255,165,0,255},
            name_override = "{rarity}{name}"
        },
    -- 'S' tier coupons
        {
            codes = {"03j"},
            audio = "tink.mp3",
            border = {255,0,0,255},
            background = {255,255,255,255}, 
            name_override = "{name}"
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
            quality = "6",
            notify = "Class Jewellery: {yellow}{name}",
            border = {0,255,255,230}
        },

    -- Tooltip descriptions for noob and veteran charms
        {
        code = "c11",
        location = {"onplayer", "atvendor", "equipped", "onground"},
        prefix_desc = "{purple} To Upgrade: Cube with 7 Rare Charms, Elixir, Maple Leaf, and Ancient Decipherer \n Socket with any Rune, Gem, or Jewel \n"
        },
        
        {
        code = "c12",
        location = {"onplayer", "atvendor", "equipped", "onground"},
        prefix_desc = " {purple}To add a socket cube with 1 Perfect gem and Socket Donut \n ** Supports Charm Runewords ** \n "
        },


    -- Tooltip description for monster parts showing common drop locations
        {
            code = "hrt",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily in Cow Level and Maps \n Crafting Reagant\n"
        },
        
        {
            code = "brz",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Sand Leapers in Act 1, Ratmen in Act 3, and Maps \n Crafting Reagant\n"
        },
        
        {
            code = "jaw",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Skeleton Archers/Dark Rangers: Act 1 and Maps \n Crafting Reagant\n"
        },
        
        {
            code = "eyz",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Golems in Act 4, Act 5 Nihlathak's Domain, and Maps\n Crafting Reagant\n"
        },
                
        {
            code = "hrn",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Barlog in Act 4 and Maps\n Crafting Reagant\n"
        },
                        
        {
            code = "tal",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Huntress' and Slinger's in Act 2 and Maps\n Crafting Reagant\n"
        },
                                
        {
            code = "flg",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Fallen Shamen in Act 1 and Maps\n Crafting Reagant\n"
        },
                                        
        {
            code = "fng",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Arachs, Tomb Vipers, and Dune beasts in Act 2 and Maps\n Crafting Reagant\n"
        },
                                                
        {
            code = "qll",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Quill Rats in Act 1, Thorned Hulks in Act 3, and Maps\n Crafting Reagant\n"
        },
                                                        
        {
            code = "sol",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple}Found primarily from Ghosts, Gloams, Goatmen in all Acts and Poppy Farm/Maps\n Crafting Reagant\n"
        },
        
        {
            code = "scz",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple} Doom Knights and Abyss Knights in Chaos Sanctuary Act 5, and Maps\n Found primarily from Ghoul Lords in Act 1 and 3,\n Crafting Reagant\n"
        },
                
        {
            code = "spe",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{white}Cube with Multi Stocker to store \n {purple} Primairly dropped from Zakarumite in Act 3, Over Lords and Coruplent in Act 4, and Maps \n Crafting Reagant\n"
        },
                        
        {
            code = "zzz",
            location = {"onplayer", "atvendor", "equipped", "onground"},
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
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{purple}Hot: {red}Tsu{white}-{gold}Ne {gray}Lvl: 55 \n{Purple}Prudence: {orange} Mal{white}-Tir {gray}Lvl: 49 \n{purple}Mist: {green}Mo{white}-{red}Ya {gray}Lvl: 47 \n{purple}Deception: {yellow}Sa{white}-{orange}Wa{gray} Lvl: 38\n{purple}Smoke: {white}Nef-{orange}Lem {gray}Lvl: 37 \n{purple}Wealth: {orange}To{white}-{red}Mi {gray}Lvl: 36\n{Purple}Stealth: {white}Tal-Eth {gray}Lvl: 17\n{purple}Darkness: {red}Ki{white}-{red}Ri {gray}Lvl: 15\n{purple}Fog: {red}Ki{white}-{red}Ri {gray}Lvl: 12\n{purple}Gold: {red}Ri{white}-N {gray}Lvl: 10\n {purple}Greed: {white}Yo-Ku {gray}Lvl: 9\n",
            sockets = "2"
            },
    -- Tooltip information for Body Armor showing available 3 socket Runewords
            {
                codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
                runeword = false,
                pstat = { index = 12, op = "<=", value = 44 }, -- Char Level is <= 44,
                location = {"onplayer", "atvendor", "equipped"},
                suffix_desc = "{purple}Abundant: {orange}Ho{white}-U{green}Fu {gray}Lvl: 44\n{purple}Harmony: {orange}Wa{white}-{green}Se{white}-I {gray}Lvl: 43\n{purple}Fossil of the Sun: {white}Ka-{green}Se{white}-{red}Ki {gray}Lvl: 43\n{purple}Lionheart: {orange}Hel{white}-{orange}Lum{white}-{orange}Fal {gray}Lvl: 41\n{purple}Maiden: {yellow}O{white}-{orange}To{white}-{orange}Me {gray}Lvl: 36\n{purple}Impetuous: {red}Mi{white}-{Yellow}Sa{white}-{Orange}To {gray}Lvl: 36\n{purple}Praise: {orange}Ho{white}-{orange}Me{white}-{orange}Ru {gray}Lvl: 34\n{purple}Captive: {orange}Ho{white}-{red}Ri{white}-Yo {gray}Lvl: 31\n{purple}Peace: {orange}Shael{white}-{orange}Thul{white}-{orange}Amn {gray}Lvl: 29\n{purple}Hustle: {white}Shael-Ral-Eld {gray}Lvl: 29\n{purple}Oath: {red}Ki{white}-Ka-I {gray}Lvl: 29\n{purple}Myth: {orange}Hel{white}-Amn-Nef {gray}Lvl: 25\n{purple}Exuberance: {red}A{white}-I-Ka {gray}Lvl: 17\n{Purple}Famine: {red}Ki{white}-{red}Ki{white}-N {gray}Lvl: 10\n{Purple}Forefeel: {white}Yo-Ka-N {gray}Lvl: 9\n{purple}Evolution: {white}Shi-N-Ka {gray}Lvl: 6\n",
                sockets = "3",
            },
            {
                codes = {"qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
                runeword = false,
                pstat = { index = 12, op = ">", value = 45 }, -- Char Level is <= 44,
                location = {"onplayer", "atvendor", "equipped"},
                suffix_desc = "{Purple}\n{purple}Duress: {orange}Shael{white}-{orange}Um{white}-Thul {gray}Lvl: 47\n{purple}Bone: {white}Sol-{orange}Um{white}-{orange}Um {gray}Lvl: 47\n{purple}Daylight: {green}Hi{white}-{orange}Ru{white}-{green}Ma {gray}Lvl: 46\n{purple}Indominable: {yellow}Ra{white}-N{green}Ma {gray}Lvl: 45\n",
                sockets = "3",
            },
            

    -- In game notification for all monster parts
        {
            codes = {"qll", "hrt", "brz", "jaw", "eyz", "hrn", "tal", "flg", "fng","sol", "scz", "spe"},
            notify = "{red}Crafting Reagant: {white}{name}"
        },

    -- In game notification for all perfect gems
        {
            codes = {"gvb", "gyb", "gbb", "ggb", "grb", "gwb", "skb", "gbk"},
            prefix = "{white}**  ",
            notify = "{name}",
            suffix = "{white}  **",
            audio = "mid.mp3"
        },
    
    -- Notify high LOD rune drops
   
        {   
            code = "23l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Mal  {red}*{blue}*{green}*",
            name_override = "{black}Mal",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        
        {   
            code = "24l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ist   {red}*{blue}*{green}*",
            name_override = "{black}Ist",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
    
        {   
            code = "25l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Gul   {red}*{blue}*{green}*",
            name_override = "{black}Gul",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        
        {   
            code = "26l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Vex   {red}*{blue}*{green}*",
            name_override = "{red}Vex",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        
        {   
            code = "27l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ohm  {red}*{blue}*{green}*",
            name_override = "{red}Ohm",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
    
        {   
            code = "28l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Lo   {red}*{blue}*{green}*",
            name_override = "{red}Lo",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
    
        {   
            code = "29l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Sur   {red}*{blue}*{green}*",
            name_override = "{red}Sur",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        
        {   
            code = "30l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Ber  {red}*{blue}*{green}*",
            name_override = "{red}Ber",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        
        {   
            code = "31l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Jah   {red}*{blue}*{green}*",
            name_override = "{red}Jah",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        
        {   
            code = "32l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Cham   {red}*{blue}*{green}*",
            name_override = "{red}Cham",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        
        {   
            code = "33l",
            notify = "{red}*{blue}*{green}*   {orange}High Rune Drop: {white}Zod   {red}*{blue}*{green}*",
            name_override = "{red}Zod",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },


    -- Notify high ES rune drop
    
        {   
            codes = {"r43", "r44", "r45", "r46", "r50" },
            notify = "{orange}Ultra Rune Nearby: {name}",
            name_override = "{red}{name}{red}",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },

    -- Tier 1
        {   
            code = "z01",
            notify = "Tier 1 Map: {white} {name}",
            name_override = "Cellar of Pain",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
      
        {   
            code = "z02",
            notify = "Tier 1 Map: {white} {name}",
            name_override = "Chasm of Horrors",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z03",
            notify = "Tier 1 Map: {white} {name}",
            name_override = "Crypt Of Damnation",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z04",
            notify = "Tier 1 Map: {white} {name}",
            name_override = "Necropolis",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

    -- Tier 2
        {   
            code = "z05",
            notify = "Tier 2 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Ancient Tomb",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z06",
            notify = "Tier 2 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Chaos Rift",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        
        {   
            code = "z07",
            notify = "Tier 2 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Infested Lair",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z08",
            notify = "Tier 2 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Labyrinth of Suffering",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        
    -- Tier 3
        {   
            code = "z09",
            notify = "Tier 3 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Decaying Depths",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

        {   
            code = "z10",
            notify = "Tier 3 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Endless Abyss",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

        {   
            code = "z11",
            notify = "Tier 3 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Frozen Wastes",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z12",
            notify = "Tier 3 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Twisted Maze",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

    -- Tier 4
        {   
            code = "z13",
            notify = "Tier 4 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Cursed Ossuary",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

        {   
            code = "z14",
            notify = "Tier 4 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Infernal Nexus",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z15",
            notify = "Tier 4 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "Reliquary of Souls",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
       
        {   
            code = "z16",
            notify = "Tier 4 Map: {white} {name}",
            audio = "map.mp3",
            name_override = "{white}Shrine of Destruction",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },

    -- Tier 5
        {   
            code = "z17",
            notify = "Tier 5 Map: {white}{name}",
            audio = "t5_map.mp3",
            name_override = "{black}Eye of the Storm",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },

        {   
            code = "z18",
            notify = "Tier 5 Map: {white}{name}",
            audio = "t5_map.mp3",
            name_override = "{black}Ice Crown Citadel",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        
        {   
            code = "z19",
            notify = "Tier 5 Map: {white}{name}",
            audio = "t5_map.mp3",
            name_override = "{black}The Sanctum of the Dead",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },

        {   
        code = "z20",
        notify = "Tier 5 Map: {white}{name}",
        audio = "t5_map.mp3",
        name_override = "{black}The Reliquary of False Light",
        border = {0,0,0,255},
        background = {255,255,255,255}
        },
    -- Tooltips on ESR Runes (Thanks to Quan + Squid)
        {code="r01",location={"onplayer","atvendor"},prefix="{gray}+1 White Rune Points when bagged{orange}\n"}, --I Rune
        {code="r02",location={"onplayer","atvendor"},prefix="{gray}+2 White Rune Points when bagged{orange}\n"}, --U Rune
        {code="r03",location={"onplayer","atvendor"},prefix="{gray}+4 White Rune Points when bagged{orange}\n"}, --Shi Rune
        {code="r04",location={"onplayer","atvendor"},prefix="{gray}+8 White Rune Points when bagged{orange}\n"}, --Ka Rune
        {code="r05",location={"onplayer","atvendor"},prefix="{gray}+16 White Rune Points when bagged{orange}\n"}, --N Rune
        {code="r06",location={"onplayer","atvendor"},prefix="{gray}+32 White Rune Points when bagged{orange}\n"}, --Ku Rune
        {code="r07",location={"onplayer","atvendor"},prefix="{gray}+64 White Rune Points when bagged{orange}\n"}, --Yo Rune
        {code="r08",location={"onplayer","atvendor"},prefix="{gray}+1 Red Rune Points when bagged{orange}\n"}, --Ki Rune
        {code="r09",location={"onplayer","atvendor"},prefix="{gray}+2 Red Rune Points when bagged{orange}\n"}, --Ri Rune
        {code="r10",location={"onplayer","atvendor"},prefix="{gray}+4 Red Rune Points when bagged{orange}\n"}, --Mi Rune
        {code="r11",location={"onplayer","atvendor"},prefix="{gray}+8 Red Rune Points when bagged{orange}\n"}, --Ya Rune
        {code="r12",location={"onplayer","atvendor"},prefix="{gray}+16 Red Rune Points when bagged{orange}\n"}, --A Rune
        {code="r13",location={"onplayer","atvendor"},prefix="{gray}+32 Red Rune Points when bagged{orange}\n"}, --Tsu Rune
        {code="r14",location={"onplayer","atvendor"},prefix="{gray}+64 Red Rune Points when bagged{orange}\n"}, --Chi Rune
        {code="r15",location={"onplayer","atvendor"},prefix="{gray}+1 Yellow Rune Points when bagged{orange}\n"}, --Sa Rune
        {code="r16",location={"onplayer","atvendor"},prefix="{gray}+2 Yellow Rune Points when bagged{orange}\n"}, --Yu Rune
        {code="r17",location={"onplayer","atvendor"},prefix="{gray}+4 Yellow Rune Points when bagged{orange}\n"}, --Ke Rune
        {code="r18",location={"onplayer","atvendor"},prefix="{gray}+8 Yellow Rune Points when bagged{orange}\n"}, --E Rune
        {code="r19",location={"onplayer","atvendor"},prefix="{gray}+16 Yellow Rune Points when bagged{orange}\n"}, --Ko Rune
        {code="r20",location={"onplayer","atvendor"},prefix="{gray}+32 Yellow Rune Points when bagged{orange}\n"}, --Ra Rune
        {code="r21",location={"onplayer","atvendor"},prefix="{gray}+64 Yellow Rune Points when bagged{orange}\n"}, --O Rune
        {code="r22",location={"onplayer","atvendor"},prefix="{gray}+1 Orange Rune Points when bagged{orange}\n"}, --Ho Rune
        {code="r23",location={"onplayer","atvendor"},prefix="{gray}+2 Orange Rune Points when bagged{orange}\n"}, --Me Rune
        {code="r24",location={"onplayer","atvendor"},prefix="{gray}+4 Orange Rune Points when bagged{orange}\n"}, --Ru Rune
        {code="r25",location={"onplayer","atvendor"},prefix="{gray}+8 Orange Rune Points when bagged{orange}\n"}, --Ta Rune
        {code="r26",location={"onplayer","atvendor"},prefix="{gray}+16 Orange Rune Points when bagged{orange}\n"}, --To Rune
        {code="r27",location={"onplayer","atvendor"},prefix="{gray}+32 Orange Rune Points when bagged{orange}\n"}, --Wa Rune
        {code="r28",location={"onplayer","atvendor"},prefix="{gray}+64 Orange Rune Points when bagged{orange}\n"}, --Ha Rune
        {code="r29",location={"onplayer","atvendor"},prefix="{gray}+1 Green Rune Points when bagged{orange}\n"}, --Na Rune
        {code="r30",location={"onplayer","atvendor"},prefix="{gray}+2 Green Rune Points when bagged{orange}\n"}, --Ni Rune
        {code="r31",location={"onplayer","atvendor"},prefix="{gray}+4 Green Rune Points when bagged{orange}\n"}, --Se Rune
        {code="r32",location={"onplayer","atvendor"},prefix="{gray}+8 Green Rune Points when bagged{orange}\n"}, --Fu Rune
        {code="r33",location={"onplayer","atvendor"},prefix="{gray}+16 Green Rune Points when bagged{orange}\n"}, --Ma Rune
        {code="r34",location={"onplayer","atvendor"},prefix="{gray}+32 Green Rune Points when bagged{orange}\n"}, --Hi Rune
        {code="r35",location={"onplayer","atvendor"},prefix="{gray}+64 Green Rune Points when bagged{orange}\n"}, --Mo Rune
        {code="r36",location={"onplayer","atvendor"},prefix="{gray}+1 Gold Rune Points when bagged{orange}\n"}, --No Rune
        {code="r37",location={"onplayer","atvendor"},prefix="{gray}+2 Gold Rune Points when bagged{orange}\n"}, --Te Rune
        {code="r38",location={"onplayer","atvendor"},prefix="{gray}+4 Gold Rune Points when bagged{orange}\n"}, --Ro Rune		
        {code="r39",location={"onplayer","atvendor"},prefix="{gray}+8 Gold Rune Points when bagged{orange}\n"}, --So Rune		
        {code="r40",location={"onplayer","atvendor"},prefix="{gray}+16 Gold Rune Points when bagged{orange}\n"}, --Mu Rune		
        {code="r41",location={"onplayer","atvendor"},prefix="{gray}+32 Gold Rune Points when bagged{orange}\n"}, --Ne Rune
        {code="r42",location={"onplayer","atvendor"},prefix="{gray}+64 Gold Rune Points when bagged{orange}\n"}, --Re Rune
        {code="r43",location={"onplayer","atvendor"},prefix="{gray}+1 Purple Rune Points when bagged{orange}\n"}, --Su Rune
        {code="r44",location={"onplayer","atvendor"},prefix="{gray}+2 Purple Rune Points when bagged{orange}\n"}, --He Rune
        {code="r45",location={"onplayer","atvendor"},prefix="{gray}+4 Purple Rune Points when bagged{orange}\n"}, --Nu Rune
        {code="r46",location={"onplayer","atvendor"},prefix="{gray}+8 Purple Rune Points when bagged{orange}\n"}, --Wo Rune
        {code="r50",location={"onplayer","atvendor"},prefix="{gray}+16 Purple Rune Points when bagged{orange}\n"}, --Null Rune
    -- Tooltips on LoD Decals (monkey see monkey do)
        {code = "01l",location = {"onplayer","atvendor"},prefix = "{gray}+1 Low Rune Points when bagged{white}\n"},
        {code = "02",location = {"onplayer","atvendor"},prefix = "{gray}+2 Low Rune Points when bagged{white}\n"},
        {code = "03l",location = {"onplayer","atvendor"},prefix = "{gray}+4 Low Rune Points when bagged{white}\n"},
        {code = "04l",location = {"onplayer","atvendor"},prefix = "{gray}+8 Low Rune Points when bagged{white}\n"},
        {code = "05l",location = {"onplayer","atvendor"},prefix = "{gray}+16 Low Rune Points when bagged{white}\n"},
        {code = "06l",location = {"onplayer","atvendor"},prefix = "{gray}+32 Low Rune Points when bagged{white}\n"},
        {code = "07l",location = {"onplayer","atvendor"},prefix = "{gray}+64 Low Rune Points when bagged{white}\n"},
        {code = "08l",location = {"onplayer","atvendor"},prefix = "{gray}+128 Low Rune Points when bagged{white}\n"},
        {code = "09l",location = {"onplayer","atvendor"},prefix = "{gray}+256 Low Rune Points when bagged{white}\n"},
        {code = "10l",location = {"onplayer","atvendor"},prefix = "{gray}+512 Low Rune Points when bagged{white}\n"},
        {code = "11l",location = {"onplayer","atvendor"},prefix = "{gray}+1024 Low Rune Points when bagged{white}\n"},
        {code = "12l",location = {"onplayer","atvendor"},prefix = "{gray}+1 Mid Rune Points when bagged{white}\n"},
        {code = "13l",location = {"onplayer","atvendor"},prefix = "{gray}+2 Mid Rune Points when bagged{white}\n"},
        {code = "14l",location = {"onplayer","atvendor"},prefix = "{gray}+4 Mid Rune Points when bagged{white}\n"},
        {code = "15l",location = {"onplayer","atvendor"},prefix = "{gray}+8 Mid Rune Points when bagged{white}\n"},
        {code = "16l",location = {"onplayer","atvendor"},prefix = "{gray}+16 Mid Rune Points when bagged{white}\n"},
        {code = "17l",location = {"onplayer","atvendor"},prefix = "{gray}+32 Mid Rune Points when bagged{white}\n"},
        {code = "18l",location = {"onplayer","atvendor"},prefix = "{gray}+64 Mid Rune Points when bagged{white}\n"},
        {code = "19l",location = {"onplayer","atvendor"},prefix = "{gray}+128 Mid Rune Points when bagged{white}\n"},
        {code = "20l",location = {"onplayer","atvendor"},prefix = "{gray}+256 Mid Rune Points when bagged{white}\n"},
        {code = "21l",location = {"onplayer","atvendor"},prefix = "{gray}+512 Mid Rune Points when bagged{white}\n"},
        {code = "22l",location = {"onplayer","atvendor"},prefix = "{gray}+1024 Mid Rune Points when bagged{white}\n"},
        {code = "23l",location = {"onplayer","atvendor"},prefix = "{gray}+1 High Rune Points when bagged{white}\n"},
        {code = "24l",location = {"onplayer","atvendor"},prefix = "{gray}+2 High Rune Points when bagged{white}\n"},
        {code = "25l",location = {"onplayer","atvendor"},prefix = "{gray}+4 High Rune Points when bagged{white}\n"},
        {code = "26l",location = {"onplayer","atvendor"},prefix = "{gray}+8 High Rune Points when bagged{white}\n"},
        {code = "27l",location = {"onplayer","atvendor"},prefix = "{gray}+16 High Rune Points when bagged{white}\n"},
        {code = "28l",location = {"onplayer","atvendor"},prefix = "{gray}+32 High Rune Points when bagged{white}\n"},
        {code = "29l",location = {"onplayer","atvendor"},prefix = "{gray}+64 High Rune Points when bagged{white}\n"},
        {code = "30l",location = {"onplayer","atvendor"},prefix = "{gray}+128 High Rune Points when bagged{white}\n"},
        {code = "31l",location = {"onplayer","atvendor"},prefix = "{gray}+256 High Rune Points when bagged{white}\n"},    
        {code = "32l",location = {"onplayer","atvendor"},prefix = "{gray}+512 High Rune Points when bagged{white}\n"},
        {code = "33l",location = {"onplayer","atvendor"},prefix = "{gray}+1024 High Rune Points when bagged{white}\n"},
    -- Tooltip to display max sockets
        {   
            codes = "allitems",
            suffix_desc = "{green}Sockets: {maxsock}\n{blue}",
            sockets = "1+",
            maxsock = true
        },
        {   
            codes = "allitems",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            suffix_desc = "{red}Max Sockets: {maxsock}\n{blue}",
            sockets = "0+",
            maxsock = false
        },
    -- Tooltip display sockets on ground items -
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            location ="onground",
            suffix = " {lilac}[{sockets}]"
        },
    },
}
