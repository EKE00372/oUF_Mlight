
-- local T, C, L, G = unpack(select(2, ...))

local addon, ns = ...
ns[1] = {} -- T, functions, constants, variables
ns[2] = {} -- C, config
ns[3] = {} -- L, localization
ns[4] = {} -- G, globals (Optionnal)

--[[--------------
--     init     --
--------------]]--

local T, C, L, G = unpack(select(2, ...))

--[[--------------
--     Config     --
--------------]]--

local default_ClassClick = {
	PRIEST = { 
		["1"] = {
			["Click"]		= {
				["action"]	= "target",
							},
			["shift-"]		= {
				["action"]	= 139,--"恢復",
							},
			["ctrl-"]		= {
				["action"]	= 527,--"驅散魔法",
							},
			["alt-"]		= {
				["action"]	= 2061,--"快速治療",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]		= 17,--"真言術:盾",
							},
			["shift-"]		= {
				["action"]	= 33076,--"癒合禱言",
							},
			["ctrl-"]		= {
				["action"]	= 528,--"驅除疾病", 
							},
			["alt-"]		= {
				["action"]	= 2060,--"強效治療術",
							},
		},
		["3"] = {
			["Click"]			= {
				["action"]	= 34861,--"治療之環",
							},
			["shift-"]		= {
				["action"]	= 2050, --治疗术
							},
			["alt-"]		= {
				["action"]	= 1706, --漂浮术
							},
			["ctrl-"]		= {
				["action"]	= 21562,--耐
							},
		},
		["4"] = {
			["Click"]		= {
				["action"]		= 596, --治疗祷言
							},
			["shift-"]		= {
				["action"]	= 47758, -- 苦修
							},
			["ctrl-"]		= {
				["action"]	= 73325, -- 信仰飞跃
							},
		},
		["5"] = {
			["Click"]			= {
				["action"]	= 48153, -- 守护之魂
							},
			["shift-"]		= {
				["action"]	= 88625, -- 圣言术
							},
			["ctrl-"]		= {
				["action"]	= 33206,--痛苦压制
							},
		},
	},
	DRUID = { 
		["1"] = {
			["Click"]		= {
				["action"]	= "target",
							},
			["shift-"]		= {
				["action"]	= 774,--"回春術",
							},
			["ctrl-"]		= {
				["action"]	= 2782,--"净化腐蚀",
							},
			["alt-"]		= {
				["action"]	= 8936,--"癒合",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 48438,--"野性成长",
							},
			["shift-"]		= {
				["action"]	= 18562,--"迅捷治愈",
							},
			["ctrl-"]		= {
				["action"]	= 88423, -- 自然治愈
							},
			["alt-"]		= {
				["action"]	= 50464,--"滋補術",
							},
		},
		["3"] = {
			["Click"]			= {
				["action"]	= 33763,--"生命之花",
							},
			["shift-"]		= {
				["action"]	= 5185,--治疗之触
							},
			["ctrl-"]		= {
				["action"]	= 20484,--复生,
							},
		},
		["4"] = {
			["Click"]			= {
				["action"]	= 29166,----激活
							},
			["alt-"]		= {
				["action"]		= 33763,----生命之花
							},
		},
	},
	SHAMAN = { 
		["1"] = {
			["Click"]		= {
				["action"]	= "target",
							},
			["ctrl-"]		= {
				["action"]	= 2008,		--"先祖之魂",
							},
			["alt-"]		= {
				["action"]	= 8004,		--"治疗之涌",
							},
			["shift-"]		= {
				["action"]	= 1064,		--"治疗链",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 51886,	--"净化灵魂",
							},
			["ctrl-"]		= {
				["action"]	= 546,		--水上行走
							},
			["alt-"]		= {
				["action"]	= 131,		--水下呼吸
							},
		},
		["3"] = {
			["Click"]			= {
				["action"]	= 61295,	--"激流",
							},
		},
		["4"] = {
			["Click"]			= {
				["action"]	= 73680,	--"元素释放",
							},
		},
	},
	PALADIN = { 
		["1"] = {
			["Click"]		= {
				["action"]	= "target",
							},
			["shift-"]		= {
				["action"]	= 635,--"聖光術",
							},
			["alt-"]		= {
				["action"]	= 19750,--"聖光閃現",
							},
			["ctrl-"]		= {
				["action"]	= 53563,--"圣光信标",
							},
		},
		["2"] = {
		    ["Click"]			= {
				["action"]	= 20473,--"神聖震擊",
							},
			["shift-"]		= {
				["action"]	= 82326,--"神圣之光",
							},
			["ctrl-"]		= {
				["action"]	= 4987,--"淨化術",
							},
			["alt-"]		= {
				["action"]	= 85673,--"荣耀圣令",
							},
		},
		["3"] = {
		    ["Click"]			= {
				["action"]	= 31789,--正義防護
							},
			["alt-"]		= {
				["action"]	= 1044,--自由之手
							},
			["ctrl-"]	= {
				["action"]	= 31789, -- 正义防御
							},
		},
		["4"] = {
			["Click"]			= {
				["action"]	= 1022,	--"保护之手",
							},
			["alt-"]		= {
				["action"]	= 6940,  --牺牲之手
							},
		},
		["5"] = {
			["Click"]			= {
				["action"]	= 1038,	--"拯救之手",
							},
		},
	},
	WARRIOR = { 
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
			["ctrl-"]		= {
				["action"]	= 50720,--"戒備守護",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 3411,--"阻擾",
							},
		},
	},
	MAGE = { 
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
			["alt-"]		= {
				["action"]	= 1459,--"秘法智力",
							},
			["ctrl-"]		= {
				["action"]	= 54646,--"专注",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 475,--"解除詛咒",
							},
			["shift-"]		= {
				["action"]	= 130,--"缓落",
							},
		},
	},
	WARLOCK = { 
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
			["alt-"]		= {
				["action"]	= 80398,--"黑暗意图",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 5697,--"无尽呼吸",
							},
		},
	},
	HUNTER = { 
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 34477,--"誤導",
							},
		},
	},
	ROGUE = { 
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 57933,--"偷天換日",
							},
		},
	},
	DEATHKNIGHT = {
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
			["shift-"]		= {
				["action"]	= 61999, --复活盟友
							},
		},
	},
	MONK = {
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
		},
		["2"] = {
			["Click"]			= {
				["action"]	= 119611,--"复苏之雾",
							},
		},
	},
	DEMONHUNTER = {
		["1"] = {
			["Click"]			= {
				["action"]	= "target",
							},
		},
	},
}

local classClickdb = default_ClassClick[select(2, UnitClass("player"))]
local modifiers = { "Click", "shift-", "ctrl-", "alt-"}

local ClickCastDB = {}

for i = 1, 13  do
	ClickCastDB[tostring(i)] = {}
	if i < 6 then
		for _, modifier in ipairs(modifiers) do
			ClickCastDB[tostring(i)][modifier] = {}
			ClickCastDB[tostring(i)][modifier]["action"] = "NONE"
			ClickCastDB[tostring(i)][modifier]["macro"] = ""
		end
	else -- 滚轮用的
		ClickCastDB[tostring(i)]["Click"] = {}
		ClickCastDB[tostring(i)]["Click"]["action"] = "NONE"
		ClickCastDB[tostring(i)]["Click"]["macro"] = ""
	end
end

for k, _ in pairs(classClickdb) do
	for j, _ in pairs(classClickdb[k]) do
		local var = classClickdb[k][j]["action"]
		local spellname = GetSpellInfo(var)
		if (var == "target" or var == "tot" or var == "follow" or var == "macro") then
			ClickCastDB[k][j]["action"] = var
		elseif spellname then
			ClickCastDB[k][j]["action"] = spellname
		end
	end
end

local EJ_GetEncounterInfo = function(value)
	local a = EJ_GetEncounterInfo(value)
	return a
end

local AuraList = {
	["Buffs"] = {
	--牧师
		[GetSpellInfo(33206)]  = { id = 33206,  level = 15,}, -- 痛苦压制
        [GetSpellInfo(47788)]  = { id = 47788,  level = 15,}, -- 守护之魂
	--小德
        [GetSpellInfo(102342)] = { id = 102342, level = 15,}, -- 铁木树皮
		[GetSpellInfo(22812)]  = { id = 22812,  level = 15,}, -- 树皮术
		[GetSpellInfo(61336)]  = { id = 61336,  level = 15,}, -- 生存本能
		[GetSpellInfo(105737)] = { id = 105737, level = 15,}, -- 乌索克之力
		[GetSpellInfo(22842)]  = { id = 22842,  level = 15,}, -- 狂暴回复
	--骑士
		[GetSpellInfo(1022)]   = { id = 1022,   level = 15,}, -- 保护之手
		[GetSpellInfo(31850)]  = { id = 31850,  level = 15,}, -- 炽热防御者
        [GetSpellInfo(498)]    = { id = 498,    level = 15,}, -- 圣佑术
		[GetSpellInfo(642)]    = { id = 642,    level = 15,}, -- 圣盾术
		[GetSpellInfo(86659)]  = { id = 86659,  level = 15,}, -- 远古列王守卫
	--武僧
		[GetSpellInfo(116849)] = { id = 116849, level = 15,}, -- 作茧缚命
		[GetSpellInfo(115203)] = { id = 115203, level = 15,}, -- 壮胆酒	
	--DK
        [GetSpellInfo(50397)]  = { id = 50397,  level = 15,}, -- 巫妖之躯
		[GetSpellInfo(48707)]  = { id = 48707,  level = 15,}, -- 反魔法护罩
		[GetSpellInfo(48792)]  = { id = 48792,  level = 15,}, -- 冰封之韧
		--[GetSpellInfo(49222)]  = { id = 49222,  level = 15,}, -- 白骨之盾
		[GetSpellInfo(49028)]  = { id = 49028,  level = 15,}, -- 吸血鬼之血
		[GetSpellInfo(55233)]  = { id = 55233,  level = 15,}, -- 符文刃舞
	--战士
		--[GetSpellInfo(112048)] = { id = 112048, level = 15,}, -- 盾牌屏障
		[GetSpellInfo(12975)]  = { id = 12975,  level = 15,}, -- 破釜沉舟
		[GetSpellInfo(871)]    = { id = 871,    level = 15,}, -- 盾墙
	},
	["Debuffs"] = {
	},
}

local DebuffList = {
	[EJ_GetInstanceInfo(669)] = { -- 地狱火堡垒
		
		[EJ_GetEncounterInfo(1426)] = { --奇袭地狱火
			[GetSpellInfo(186016)] = {id = 186016, level = 8,}, -- 邪火弹药 拿彈藥的dot
			[GetSpellInfo(185090)] = {id = 185090, level = 8,}, -- 英姿勃发
			[GetSpellInfo(180319)] = {id = 180319, level = 8,}, -- 振奋狂哮
			[GetSpellInfo(184379)] = {id = 184379, level = 8,}, -- 啸风战斧 boss aoe 點名出人群三角站位
			[GetSpellInfo(184238)] = {id = 184238, level = 8,}, -- 颤抖！ 減速
			[GetSpellInfo(184243)] = {id = 184243, level = 8,}, -- 猛击 易傷
			[GetSpellInfo(181968)] = {id = 181968, level = 8,}, -- 恶魔变形 術士變身
			[GetSpellInfo(185816)] = {id = 185816, level = 8,}, -- 修复 工程師修理坦克，打斷
			[GetSpellInfo(185806)] = {id = 185806, level = 8,}, -- 导电冲击脉冲 擊暈
			[GetSpellInfo(180022)] = {id = 180022, level = 8,}, -- 钻孔 你要被車碾了
			[GetSpellInfo(185157)] = {id = 185157, level = 8,}, -- 灼烧 正面錐形aoe dot
			[GetSpellInfo(187655)] = {id = 187655, level = 8,}, -- 腐化虹吸
		},
		
		[EJ_GetEncounterInfo(1425)] = { --钢铁掠夺者
			[GetSpellInfo(182074)] = {id = 182074, level = 8,}, -- 焚燒/献祭	踩到火
			[GetSpellInfo(182020)] = {id = 182020, level = 8,}, -- 猛擊/重击	aoe
			[GetSpellInfo(182001)] = {id = 182001, level = 8,}, -- 不穩定的球體/不稳定的宝珠	8碼分散
			[GetSpellInfo(182280)] = {id = 182280, level = 8,}, -- 砲擊/炮击	離boss越遠傷害越低，p1只點坦，p2點全部
			[GetSpellInfo(182003)] = {id = 182003, level = 8,}, -- 燃料污漬/燃料尾痕	踩到水減速
			[GetSpellInfo(179897)] = {id = 179897, level = 8,}, -- 閃擊/迅猛突袭	 被夾住啦
			[GetSpellInfo(185242)] = {id = 185242, level = 8,}, 	
			[GetSpellInfo(185978)] = {id = 185978, level = 8,}, -- 火焰彈易傷/易爆火焰炸弹	火焰炸彈爆炸易傷
		},
		
		[EJ_GetEncounterInfo(1392)] = { --考莫克
			[GetSpellInfo(180115)] = {id = 180115, level = 8,}, -- 暗影能量/暗影能量	吃水buff，放一次強化技能消一層
			[GetSpellInfo(180116)] = {id = 180116, level = 8,}, -- 炸裂能量/爆炸能量	吃水buff，放一次強化技能消一層
			[GetSpellInfo(180117)] = {id = 180117, level = 8,}, -- 邪惡能量/邪恶能量	吃水buff，放一次強化技能消一層
			[GetSpellInfo(180244)] = {id = 180244, level = 8,}, -- 猛擊/重击	aoe，4碼分散
			[GetSpellInfo(181345)] = {id = 181345, level = 8,}, -- 邪惡碎擊/攫取之手	被手抓
			[GetSpellInfo(181321)] = {id = 181321, level = 8,}, -- 魔化之觸/邪能之触	擊飛+50%法易傷
			[GetSpellInfo(181306)] = {id = 181306, level = 8,}, -- 炸裂爆發/爆裂冲击	定身，10秒爆炸，40碼aoe
			[GetSpellInfo(187819)] = {id = 187819, level = 8,}, -- 粉碎/邪污碾压	被手抓
			[GetSpellInfo(180270)] = {id = 180270, level = 8,}, -- 暗影團塊/暗影血球	強化紫色暗影波
			[GetSpellInfo(185519)] = {id = 185519, level = 8,}, -- 熾熱團塊/炽热血球	強化黃色暗影波
			[GetSpellInfo(185521)] = {id = 185521, level = 8,}, -- 邪惡團塊/邪污血球	強化綠色暗影波
			[GetSpellInfo(181082)] = {id = 181082, level = 8,}, -- 暗影池/暗影之池	掉進水池(誰沒事去踩這個抓id啊)
			[GetSpellInfo(186559)] = {id = 186559, level = 8,}, -- 熾焰火池/火焰之池	掉進水池
			[GetSpellInfo(186560)] = {id = 186560, level = 8,}, -- 邪惡池塘/邪污之池	掉進水池
			[GetSpellInfo(181208)] = {id = 181208, level = 8,}, -- 暗影殘渣/暗影残渣	接水dot
			[GetSpellInfo(185686)] = {id = 185686, level = 8,}, -- 熾熱殘渣/爆炸残渣	接水dot
			[GetSpellInfo(185687)] = {id = 185687, level = 8,}, -- 腐惡殘渣/邪恶残渣	接水dot
		},
		[EJ_GetEncounterInfo(1432)] = { --高阶地狱	 
			[GetSpellInfo(184449)] = {id = 184449, level = 8,}, -- 死靈法師印記/死灵印记	可驅散，5個分別是紫/紫/紫/黃/紅，傷害由低到高(我也不知道為啥紫燈這麼多個)火议会
			[GetSpellInfo(184450)] = {id = 184450, level = 8,}, -- 
			[GetSpellInfo(184676)] = {id = 184676, level = 8,}, -- 
			[GetSpellInfo(185065)] = {id = 185065, level = 8,}, -- 
			[GetSpellInfo(185066)] = {id = 185066, level = 8,}, -- 
			[GetSpellInfo(184657)] = {id = 184657, level = 8,}, -- 夢魘幻貌/梦魇幻影	暗牧亂舞
			[GetSpellInfo(184673)] = {id = 184673, level = 8,}, -- 	 
			[GetSpellInfo(183701)] = {id = 183701, level = 8,}, --  魔化風暴/邪能風暴	劍聖aoe
			[GetSpellInfo(184359)] = {id = 184359, level = 8,}, --  憤怒/愤怒	血沸增傷，驅散
			[GetSpellInfo(184360)] = {id = 184360, level = 8,}, -- 
			[GetSpellInfo(184358)] = {id = 184358, level = 8,}, --  惡魔之怒/堕落狂怒	血沸點名
			[GetSpellInfo(184365)] = {id = 184365, level = 8,}, --  破壞躍擊/毁灭飞跃	血沸跳躍
			[GetSpellInfo(183885)] = {id = 183885, level = 8,}, --  镜像/镜像	劍聖鏡像
			[GetSpellInfo(184847)] = {id = 184847, level = 8,}, --  強酸創傷/酸性创伤	破甲
			[GetSpellInfo(184652)] = {id = 184652, level = 8,}, --  收割/暗影收割	踩圈
			[GetSpellInfo(184357)] = {id = 184357, level = 8,}, --  腐壞之血/污血	降低血量上限
			[GetSpellInfo(184355)] = {id = 184355, level = 8,}, --  血液沸騰/血液沸腾	血沸對最遠的5人上流血dot
		},
		[EJ_GetEncounterInfo(1396)] = { --基尔罗格·死眼
			[GetSpellInfo(180389)] = {id = 180389, level = 8,}, --  
			[GetSpellInfo(188929)] = {id = 188929, level = 8,}, --  追心飛刀/剖心飞刀	點名飛刀/流血DOT
			[GetSpellInfo(184396)] = {id = 184396, level = 8,}, --  
			[GetSpellInfo(182159)] = {id = 182159, level = 8,}, --  惡魔腐化/邪能腐蚀	特殊能量，疊滿被心控
			[GetSpellInfo(180313)] = {id = 180313, level = 8,}, --  惡魔附身/恶魔附身	被心控
			[GetSpellInfo(180718)] = {id = 180718, level = 8,}, --  不朽決心/永痕的决心	增傷，可疊20層
			[GetSpellInfo(181488)] = {id = 181488, level = 8,}, --  死亡幻象/死亡幻象	
			[GetSpellInfo(185563)] = {id = 185563, level = 8,}, --  不死救贖/永恒的救赎	一個光圈，站進去清腐化
			[GetSpellInfo(180200)] = {id = 180200, level = 8,}, --  撕碎護甲/碎甲	不該中；身上有主動減傷就不會中(同萊登)
			[GetSpellInfo(180575)] = {id = 180575, level = 8,}, --  魔化烈焰/邪能烈焰	
			[GetSpellInfo(183917)] = {id = 183917, level = 8,}, --  撕裂嚎叫/撕裂嚎叫	施法加速/流血dot
			[GetSpellInfo(186919)] = {id = 186919, level = 8,}, --  
			[GetSpellInfo(188852)] = {id = 188852, level = 8,}, --  濺血/溅血	踩水
			[GetSpellInfo(180224)] = {id = 180224, level = 8,}, --  死亡掙扎/死亡挣扎	aoe
			[GetSpellInfo(184551)] = {id = 184551, level = 8,}, --  死亡之門/死亡之门	aoe增傷
			[GetSpellInfo(180163)] = {id = 180163, level = 8,}, --  猛烈強擊/野蛮打击	大怪連擊，疊腐化
			[GetSpellInfo(184067)] = {id = 184067, level = 8,}, --  魔化之沼/邪能腐液	踩水
		},
		[EJ_GetEncounterInfo(1372)] = { --血魔
			[GetSpellInfo(180093)] = {id = 180093, level = 8,}, --  靈魂箭雨/灵魂箭雨	緩速
			[GetSpellInfo(179864)] = {id = 179864, level = 8,}, --  死亡之影/死亡之影	點名進場
			[GetSpellInfo(179867)] = {id = 179867, level = 8,}, --  血魔的腐化/血魔的腐化	進過場，不能再次進場
			[GetSpellInfo(181295)] = {id = 181295, level = 8,}, --  消化/消化	內場，debuff結束秒殺，剩3秒出場
			[GetSpellInfo(185038)] = {id = 185038, level = 8,}, --  
			[GetSpellInfo(180148)] = {id = 180148, level = 8,}, --  嗜命/生命渴望	傀儡(小怪)盯人，追上10碼爆炸
			[GetSpellInfo(179977)] = {id = 179977, level = 8,}, --  末日之觸/毁灭之触	去角落放圈
			[GetSpellInfo(179995)] = {id = 179995, level = 8,}, --  末日之井/末日井	踩到圈
			[GetSpellInfo(185190)] = {id = 185190, level = 8,}, --  魔化烈焰/邪能烈焰	大怪buff
			[GetSpellInfo(185189)] = {id = 185189, level = 8,}, --  魔化之怒/邪能之怒	大怪dot
			[GetSpellInfo(179909)] = {id = 179909, level = 8,}, --  命運共享/命运相连	能動/定身，找被定身的集合消連線
			[GetSpellInfo(179908)] = {id = 179908, level = 8,}, --  	 
			[GetSpellInfo(186770)] = {id = 186770, level = 8,}, --  靈魂之池/灵魂之池	碰到血魔的洗澡水
			[GetSpellInfo(180491)] = {id = 180491, level = 8,}, --  靈魂之核/灵魂纽带	暗牧(中怪)暗影箭增傷
			[GetSpellInfo(181582)] = {id = 181582, level = 8,}, --  低沉怒吼/狂野怒吼	大怪增傷
			[GetSpellInfo(181973)] = {id = 181973, level = 8,}, --  靈魂饗宴/灵魂盛宴	100%易傷1分鐘
		},
		[EJ_GetEncounterInfo(1433)] = { --暗影领主艾斯卡
			[GetSpellInfo(185239)] = {id = 185239, level = 8,}, --  安祖烈光/安苏之光	拿球疊dot
			[GetSpellInfo(182325)] = {id = 182325, level = 8,}, --  幻魅之傷/幻影之伤	dot，hp90%以上消失或拿球消
			[GetSpellInfo(182600)] = {id = 182600, level = 8,}, --  魔化火焰/邪能焚化	踩火
			[GetSpellInfo(181957)] = {id = 181957, level = 8,}, --  幻魅之風/幻影之风	吹下去，拿球消
			[GetSpellInfo(182178)] = {id = 182200, level = 8,}, --  魔化戰輪/邪能飞轮	出人群
			[GetSpellInfo(182178)] = {id = 182200, level = 8,}, --   
			[GetSpellInfo(179219)] = {id = 179219, level = 8,}, --  幻魅魔化炸彈/幻影邪能炸弹	別驅
			[GetSpellInfo(181753)] = {id = 181753, level = 8,}, --  魔化炸彈/邪能炸弹	拿球驅散
			[GetSpellInfo(181824)] = {id = 181824, level = 8,}, --  幻魅腐化/幻影腐蚀	10秒後爆炸，拿球清
			[GetSpellInfo(187344)] = {id = 187344, level = 8,}, --  幻魅火葬/幻影焚化	幻魅腐化給附近的人的易傷
			[GetSpellInfo(185456)] = {id = 185456, level = 8,}, --  絕望之鍊/绝望之链	配對(無誤)
			[GetSpellInfo(185510)] = {id = 185510, level = 8,}, --  黑暗束縛/暗影之缚	把鍊子綁在一起，沒有鍊子的人靠近會引爆
		},
		[EJ_GetEncounterInfo(1427)] = { --永恒者索克雷萨
			[GetSpellInfo(182038)] = {id = 182038, level = 8,}, -- 粉碎防禦/粉碎防御	迴盪之擊易傷，分攤，坦克2次換
			[GetSpellInfo(189627)] = {id = 189627, level = 8,}, -- 烈性魔珠/易爆的邪能宝珠	點名球追人，追到爆炸
			[GetSpellInfo(182218)] = {id = 182218, level = 8,}, -- 魔炎殘渣/	衝鋒留下綠火，75%減速
			[GetSpellInfo(180415)] = {id = 180415, level = 8,}, -- 魔化牢籠/邪能牢笼	水晶暈人
			[GetSpellInfo(183017)] = {id = 183017, level = 8,}, -- 
			[GetSpellInfo(189540)] = {id = 189540, level = 8,}, --	 極限威能/压倒能量	傀儡隨便電人，6秒dot
			[GetSpellInfo(184124)] = {id = 184124, level = 8,}, --	 曼那瑞之賜/堕落者之赐	綠圈aoe，別靠近別人
			[GetSpellInfo(182769)] = {id = 182769, level = 8,}, --	 恐怖凝視/魅影重重	p2被小怪追
			[GetSpellInfo(184239)] = {id = 184239, level = 8,}, --暗言術：痛苦/暗言术：恶	喚影師施放，驅散
			[GetSpellInfo(184053)] = {id = 184053, level = 8,}, --魔化屏障/邪能壁垒	支配者替boss套盾
			[GetSpellInfo(182900)] = {id = 182900, level = 8,}, --惡性糾纏/恶毒鬼魅	小怪恐懼
			[GetSpellInfo(182925)] = {id = 182925, level = 8,}, -- 
			[GetSpellInfo(188666)] = {id = 188666, level = 8,}, -- 永世饑渴/无尽饥渴	潛獵者追人，正面秒殺
			[GetSpellInfo(190776)] = {id = 190776, level = 8,}, -- 索奎薩爾的應變之計/索克雷萨之咒	潛獵者傀儡易傷
			[GetSpellInfo(188767)] = {id = 188767, level = 8,}, -- 染血追蹤者/步履蹒跚	潛獵者跑速加快
		},
		[EJ_GetEncounterInfo(1391)] = { --邪能领主扎昆
			[GetSpellInfo(180000)] = {id = 180000, level = 8,}, --凋零徽印/凋零契印	2-4層換坦
			[GetSpellInfo(179987)] = {id = 179987, level = 8,}, --蔑視光環/蔑视光环	p1光環，移動扣血
			[GetSpellInfo(181683)] = {id = 181683, level = 8,}, -- 壓迫光環/抑制光环	p2光環
			[GetSpellInfo(179993)] = {id = 179993, level = 8,}, -- 惡意光環/怨恨光环	p3光環
			[GetSpellInfo(180526)] = {id = 180526, level = 8,}, -- 腐化洗禮/腐蚀序列	P2 aoe標記，被標記的人會5碼aoe
			[GetSpellInfo(180166)] = {id = 180166, level = 8,}, -- 傷害之觸/裂伤之触	吸收治療量，驅散跳到別人身上
			[GetSpellInfo(180164)] = {id = 180164, level = 8,}, -- 
			[GetSpellInfo(182459)] = {id = 182459, level = 8,}, -- 定罪赦令/谴责法令	分攤
			[GetSpellInfo(180604)] = {id = 180604, level = 8,}, -- 剝奪之地/亵渎之地	P3地板紫圈
			[GetSpellInfo(180040)] = {id = 180040, level = 8,}, -- 統御者之禦/统御者壁垒	P3大怪給暴君90%減傷
			[GetSpellInfo(180300)] = {id = 180300, level = 8,}, -- 煉獄風暴/地火风暴	P1三豆AOE
		},
		[EJ_GetEncounterInfo(1447)] = { --祖霍拉克
			[GetSpellInfo(189260)] = {id = 189260, level = 8,}, -- 裂魂/破碎之魂	進場的暗影易傷
			[GetSpellInfo(179407)] = {id = 179407, level = 8,}, -- 虛體/魂不附体	進場debuff
			[GetSpellInfo(182008)] = {id = 182008, level = 8,}, -- 潛在能量/潜伏能量	撞到波爆炸
			[GetSpellInfo(189032)] = {id = 189032, level = 8,}, --被污染/玷污	吸收盾，分別是綠/黃/紅燈，刷滿6碼爆炸
			[GetSpellInfo(189031)] = {id = 189031, level = 8,}, --
			[GetSpellInfo(189030)] = {id = 189030, level = 8,}, --	 
			[GetSpellInfo(179428)] = {id = 179428, level = 8,}, -- 轟隆裂隙/轰鸣的裂隙	站在漩渦上，一個漩渦只要一個人踩
			[GetSpellInfo(181508)] = {id = 181508, level = 8,}, --
			[GetSpellInfo(181515)] = {id = 181515, level = 8,}, --  毀滅種子/毁灭之种	出人群
			[GetSpellInfo(181653)] = {id = 181653, level = 8,}, -- 惡魔水晶/邪能水晶	
			[GetSpellInfo(188998)] = {id = 188998, level = 8,}, -- 耗竭靈魂/枯竭灵魂	不能再次進場
		},
		[EJ_GetEncounterInfo(1394)] = { --暴君维哈里
			[GetSpellInfo(186134)] = {id = 186134, level = 8,}, --魔化之觸/邪蚀	受到火焰傷害的標記，持續15秒，碰到暗影傷害會爆炸
			[GetSpellInfo(186135)] = {id = 186135, level = 8,}, -- 虛無之觸/灵媒	受到暗影傷害的標記，持續15秒，碰到火焰傷害會爆炸
			[GetSpellInfo(185656)] = {id = 185656, level = 8,}, -- 影魔殲滅/邪影屠戮	觸發爆炸&5碼內玩家獲得的易傷
			[GetSpellInfo(186073)] = {id = 186073, level = 8,}, -- 魔化焦灼/邪能炙烤	踩到綠火
			[GetSpellInfo(186063)] = {id = 186063, level = 8,}, -- 破滅虛空/虚空消耗	踩到紫水
			[GetSpellInfo(186407)] = {id = 186407, level = 8,}, -- 惡魔奔騰/魔能喷涌	點名，5秒後腳下出綠火
			[GetSpellInfo(186333)] = {id = 186333, level = 8,}, -- 虛無怒濤/灵能涌动	點名，5秒後腳下出紫水
			[GetSpellInfo(186448)] = {id = 186448, level = 8,}, --魔炎亂舞/邪焰乱舞	綠色大怪易傷
			[GetSpellInfo(186453)] = {id = 186453, level = 8,}, -- 
			[GetSpellInfo(186785)] = {id = 186785, level = 8,}, --	枯萎凝視/凋零凝视	紫色大怪易傷
			[GetSpellInfo(186783)] = {id = 186783, level = 8,}, --	 
			[GetSpellInfo(188208)] = {id = 188208, level = 8,}, --	 著火/点燃	小鬼火球砸中的dot
			[GetSpellInfo(186547)] = {id = 186547, level = 8,}, --	 黑洞/黑洞	全團aoe直到踩掉為止
			[GetSpellInfo(186500)] = {id = 186500, level = 8,}, --	 魔化鎖鍊/邪能锁链	跑遠拉斷
			[GetSpellInfo(187204)] = {id = 187204, level = 8,}, --	 極度混沌/混乱压制	P4增傷，10秒一層
			[GetSpellInfo(189775)] = {id = 189775, level = 8,}, --	 強化魔化鎖鍊/	
		},
		[EJ_GetEncounterInfo(1395)] = { --玛诺洛斯
			[GetSpellInfo(181275)] = {id = 181275, level = 8,}, --	 軍團的詛咒/军团诅咒	驅散召喚領主
			[GetSpellInfo(181099)] = {id = 181099, level = 8,}, --	 毀滅印記/末日印记	受到傷害移除並爆炸，20碼AOE
			[GetSpellInfo(181119)] = {id = 181119, level = 8,}, --	 末日尖刺/末日之刺	層數越高，結束時的傷害越高
			[GetSpellInfo(189717)] = {id = 189717, level = 8,}, --	
			[GetSpellInfo(182171)] = {id = 182171, level = 8,}, --	 瑪諾洛斯之血/玛洛诺斯之血	踩到P1綠水
			[GetSpellInfo(184252)] = {id = 184252, level = 8,}, --	刺傷/穿刺之伤	(p2p3/p4)不該中；旋刃戳刺時身上有主動減傷就不會中(同萊登)
			[GetSpellInfo(191231)] = {id = 191231, level = 8,}, --	 
			[GetSpellInfo(181359)] = {id = 181359, level = 8,}, --	 巨力衝擊/巨力冲击	擊飛
			[GetSpellInfo(181597)] = {id = 181597, level = 8,}, --	 瑪諾洛斯的凝視/玛诺洛斯凝视	恐懼，分攤傷害
			[GetSpellInfo(181841)] = {id = 181841, level = 8,}, --	 暗影之力/暗影之力	推人(小心加速)
			[GetSpellInfo(182006)] = {id = 182006, level = 8,}, --	 瑪諾洛斯的強力凝視/强化玛诺洛斯凝视	恐懼，分攤傷害產生白水
			[GetSpellInfo(182088)] = {id = 182088, level = 8,}, --	 強化暗影之力/强化暗影之力	p4推人
			[GetSpellInfo(182031)] = {id = 182031, level = 8,}, --	 凝視之影/凝视暗影	踩到白色
			[GetSpellInfo(190482)] = {id = 190482, level = 8,}, --	 擁抱暗影/束缚暗影	
		},
		[EJ_GetEncounterInfo(1438)] = { --阿克蒙德
			[GetSpellInfo(183634)] = {id = 183634, level = 8,}, --	 影魔衝擊/暗影冲击	擊飛，分攤落地傷害
			[GetSpellInfo(187742)] = {id = 187742, level = 8,}, --	暗影爆破/暗影冲击	大怪易傷，坦克2層換
			[GetSpellInfo(183864)] = {id = 183864, level = 8,}, --	 
			[GetSpellInfo(183828)] = {id = 183828, level = 8,}, --	 死亡烙印/死亡烙印	大怪死才消失
			[GetSpellInfo(183586)] = {id = 183586, level = 8,}, --	 毀滅之火/魔火	踩火dot
			[GetSpellInfo(182879)] = {id = 182879, level = 8,}, --	 毀滅之火鎖定/魔火锁定	追人
			[GetSpellInfo(183963)] = {id = 183963, level = 8,}, --	 那魯之光/纳鲁之光	伊芮爾的小球，免疫暗影傷害
			[GetSpellInfo(185014)] = {id = 185014, level = 8,}, --	 聚集混沌/聚焦混乱	即將被傳遞塑形混沌
			[GetSpellInfo(186123)] = {id = 186123, level = 8,}, --	 塑型混沌/精炼混乱	正面直線aoe，傳遞給箭頭指向的人
			[GetSpellInfo(184964)] = {id = 184964, level = 8,}, --	 束縛折磨/枷锁酷刑	遠離靈魂30碼消除
			[GetSpellInfo(186952)] = {id = 186952, level = 8,}, -- 	虛空放逐/虚空放逐	進場
			[GetSpellInfo(186961)] = {id = 186961, level = 8,}, --	
			[GetSpellInfo(187047)] = {id = 187047, level = 8,}, --	 吞噬生命/吞噬声明	內場，降低受到的治療量
			[GetSpellInfo(189891)] = {id = 189891, level = 8,}, --	 虛空裂隙/虚空撕裂	傳送門在外場變成的水池
			[GetSpellInfo(190049)] = {id = 190049, level = 8,}, --	 虛空腐化/虚空腐化	內場易傷
			[GetSpellInfo(188796)] = {id = 188796, level = 8,}, --	 惡魔腐化/邪能腐蚀	場邊綠水
		},
	},


}

C["RaidDebuff"] = DebuffList
C["CooldownAura"] = AuraList

C["UnitframeOptions"] = {

		style = 1, -- 1: tansparent , 2:dark bg reverse, 3:dark bg normal -- 加入
		raidstyle = 2,
		enablefade = true, -- 渐隐
		fadingalpha = 0, -- 最小透明度
		valuefontsize = 16, -- 数值字号
		
		-- health/power
		tenthousand = false, -- 万 做单位
		alwayshp = false, -- 总是显示生命值
		alwayspp = false, -- 总是显示法力值
		classcolormode = false, -- 职业颜色
		nameclasscolormode = true, -- 名字职业颜色
		
		-- portrait
		portrait = false, -- 肖像
		portraitalpha = 0.6, -- 肖像透明度
		
		-- size
		height	= 18, -- 高
		width = 220, -- 宽
		widthpet = 80, -- 宠物宽度
		widthboss = 170, -- BOSS宽度
		scale = 1.0, -- 缩放
		hpheight = 0.75, -- 生命条高度/框体高度
		 
		-- castbar
		castbars = true, -- 施法条
		cbIconsize = 32,-- 图标大小
		independentcb = false,-- 独立的施法条
		namepos = "LEFT",-- 独立施法条名字位置
		timepos = "RIGHT", -- 独立施法条时间位置
		cbheight = 16,-- 独立施法条高度
		cbwidth = 220,-- 独立施法条宽度
		target_cbheight = 16,
		target_cbwidth = 220,
		focus_cbheight = 16,
		focus_cbwidth = 220,
		channelticks = false, -- 独立施法条显示引导法术分段
		
		-- swing timer
		swing = false, -- 平砍计时条
		swheight = 12, -- 高
		swwidth = 220, -- 宽
		swoffhand = false, -- 副手
		swtimer = true, -- 时间
		swtimersize = 12, -- 时间字号
		
		-- auras
		auras = true, -- 光环
		auraborders = true, -- 按照减益类型着色光环边框
		auraperrow = 7, -- 每一行的图标数量
		playerdebuffenable = true, -- 显示玩家的DEBUFF
		playerdebuffnum = 7, -- 每一行的图标数量

		AuraFilterignoreBuff = false, -- 友方单位忽视别人的BUFF
		AuraFilterignoreDebuff = false, -- 敌对单位忽视别人的DEBUFF
		AuraFilterwhitelist = {},

		showthreatbar = true, -- 仇恨

		-- show/hide boss
		bossframes = true,
		
		-- show/hide arena
		arenaframs = true,
		
		-- show pvp timer
		pvpicon = false,
		
		-- show value 各职业状态条能量(副資源)
		demonicfuryvalue = true,
		eclipsevalue = true,
		runecooldown = true,
		totemcooldown = true,
		dpsmana = true,
		stagger = true,
		valuefs = 12,
		
		--[[ share ]]-- 团队
		enableraid = true,
		showraidpet = false, -- 显示宠物
		raidfontsize = 14, -- 字号
		namelength = 8, -- 名字字数
		showsolo = true, -- 无队伍时显示
		autoswitch = true, -- 关闭根据专精自动切换布局
		raidonly = "healer", -- healer/dpser 关闭自动切换时只显示这种样式的团队框架
		
		enablearrow = true, -- 距离过远时显示箭头
		arrowsacle = 1.0, -- 箭头尺寸

		--[[ healer mode ]]--
		healergroupfilter = '1,2,3,4,5,6', -- 显示的队伍
		healerraidheight = 45, -- 高
		healerraidwidth = 90, -- 宽
		raidmanabars = true, -- 显示法力条
		raidhpheight = 0.85, -- 生命条高度/框体高度
		anchor = "TOP", -- 延伸方向
		partyanchor = "LEFT", -- 小队延伸方向
		showgcd = true, -- 显示GCD
		showmisshp = false, -- 显示缺失生命值
		healprediction = false, -- 生命值预估
		healtank_assisticon = true, -- 显示主坦克和主助理图标
		
		--[[ dps/tank mode ]]--
		dpsgroupfilter = '1,2,3,4,5,6', -- 显示的队伍
		dpsraidheight = 45, -- 高
		dpsraidwidth = 90, -- 宽
		unitnumperline = 5, -- 每一行的框体数量
		dpsraidgroupbyclass = false, -- 按照职业排序
		dpstank_assisticon = true, -- 显示主坦克和主助理图标
		
		--[[ click cast ]]--
		enableClickCast = false, -- 点击施法
		ClickCast = ClickCastDB,
}

local eventframe = CreateFrame("Frame")
eventframe:RegisterEvent("ADDON_LOADED")
eventframe:SetScript("OnEvent", function(self, event, ...) self[event](self, ...) end)

function eventframe:ADDON_LOADED(arg1)
	if arg1 ~= "oUF_Mlight" then return end
	if MlightDB == nil then
		MlightDB = {}
	end
	if MlightDB["FramePoints"] == nil then
		MlightDB["FramePoints"] = {}
	end
end
--[[--------------
--     Globals     --
--------------]]--

G.uiname = "MlightUI_"

G.dragFrameList = {}

G.norFont = GameFontHighlight:GetFont()
G.numFont = GameFontHighlight:GetFont()
G.symbols = GameFontHighlight:GetFont()

G.media = {
	blank = "Interface\\Buttons\\WHITE8x8",
	ufbar = "Interface\\AddOns\\oUF_Mlight\\media\\ufbar",
	glow = "Interface\\AddOns\\oUF_Mlight\\media\\glow",
	barhightlight = "Interface\\AddOns\\oUF_Mlight\\media\\highlight",
	reseting = "Interface\\AddOns\\oUF_Mlight\\media\\resting",
	combat = "Interface\\AddOns\\oUF_Mlight\\media\\combat",
}

G.Iconpath = "Interface\\AddOns\\oUF_Mlight\\media\\icons\\"

G.Client = GetLocale()
G.Version = GetAddOnMetadata("MlightUIConfig", "Version")

G.PlayerRealm = GetRealmName()
G.PlayerName = UnitName("player");
		
G.resolution = GetCVar("gxFullscreenResolution")
G.screenheight = tonumber(string.match(G.resolution, "%d+x(%d+)"))
G.screenwidth = tonumber(string.match(G.resolution, "(%d+)x+%d"))

G.myClass = select(2, UnitClass("player"))

G.Ccolor = {}
if(IsAddOnLoaded'!ClassColors' and CUSTOM_CLASS_COLORS) then
	G.Ccolor = CUSTOM_CLASS_COLORS[G.myClass]
else
	G.Ccolor = RAID_CLASS_COLORS[G.myClass]
end

G.Ccolors = {}
if(IsAddOnLoaded'!ClassColors' and CUSTOM_CLASS_COLORS) then
	G.Ccolors = CUSTOM_CLASS_COLORS
else
	G.Ccolors = RAID_CLASS_COLORS
end

G.classcolor = ('|cff%02x%02x%02x'):format(G.Ccolor.r * 255, G.Ccolor.g * 255, G.Ccolor.b * 255)

