﻿local T, C, L, G = unpack(select(2, ...))

local oUF = MlightUF or oUF

oUF.Tags.Methods['Mlight:color'] = function(u, r)
    local reaction = UnitReaction(u, "player")

    if UnitIsTapDenied(u) then
        return T.hex(oUF.colors.tapped)
    elseif (UnitIsPlayer(u)) then
        local _, class = UnitClass(u)
        return T.hex(oUF.colors.class[class])
    elseif reaction then
        return T.hex(oUF.colors.reaction[reaction])
    else
        return T.hex(1, 1, 1)
    end
end
oUF.Tags.Events['Mlight:color'] = 'UNIT_FACTION' -- for tapping

oUF.Tags.Methods['Mlight:shortname'] = function(u, r)
	local name = UnitName(r or u)
	return T.utf8sub(name, 8)
end
oUF.Tags.Events["Mlight:shortname"] = "UNIT_NAME_UPDATE"

oUF.Tags.Methods["Mlight:raidname"] = function(u, r)
	local name = UnitName(r or u)
	return T.utf8sub(name, C["UnitframeOptions"]["namelength"])
end
oUF.Tags.Events["Mlight:raidname"] = "UNIT_NAME_UPDATE"

oUF.Tags.Methods["Mlight:hpraidname"] = function(u, r)
	local perc
	local name = UnitName(r or u)
	if UnitHealthMax(u) ~= 0 then
		perc = UnitHealth(u)/UnitHealthMax(u)
	else
		perc = 1
	end
	if perc > .9 or UnitIsDead(u) then
		return T.utf8sub(name, C["UnitframeOptions"]["namelength"])
	else
		return T.ShortValue(UnitHealthMax(u) - UnitHealth(u))
	end
end
oUF.Tags.Events["Mlight:hpraidname"] = "UNIT_HEALTH UNIT_NAME_UPDATE"

--------------[[     raid     ]]-------------------

oUF.Tags.Methods['Mlight:LFD'] = function(u) -- use symbols istead of letters
	local role = UnitGroupRolesAssigned(u)
	if role == "HEALER" then
		return "|cff7CFC00H|r"
	elseif role == "TANK" then
		return "|cffF4A460T|r"
	elseif role == "DAMAGER" then
		return "|cffEEEE00D|r"
	end
end
oUF.Tags.Events['Mlight:LFD'] = "GROUP_ROSTER_UPDATE PLAYER_ROLES_ASSIGNED"

oUF.Tags.Methods['Mlight:AfkDnd'] = function(u)
	if UnitIsAFK(u) then
		return "|cff9FB6CD <afk>|r"
	elseif UnitIsDND(u) then
		return "|cffCD2626 <dnd>|r"
	end
end
oUF.Tags.Events['Mlight:AfkDnd'] = 'PLAYER_FLAGS_CHANGED'

oUF.Tags.Methods['Mlight:DDG'] = function(u)
	if UnitIsDead(u) then
		return "|cffCD0000  Dead|r"
	elseif UnitIsGhost(u) then
		return "|cffBFEFFF  Ghost|r"
	elseif not UnitIsConnected(u) then
		return "|cffCCCCCC  D/C|r"
	end
end
oUF.Tags.Events['Mlight:DDG'] = 'UNIT_HEALTH UNIT_CONNECTION'