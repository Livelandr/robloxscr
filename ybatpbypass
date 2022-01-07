local gc = getgc(true);
local key = nil;
for i = #gc, 1, -1 do
    if type(gc[i]) == "table" then
        if rawget(gc[i], "A") and type(rawget(gc[i], "A")) == "table" and #(rawget(gc[i], "A")) > 2 then
            key = rawget(gc[i], "A")[2];
            break;
        end
    end
end

local oldNamecall;
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...};
    if not checkcaller() and getnamecallmethod() == "InvokeServer" and tostring(self) == "Returner" and args[1] == "idklolbrah2de" then
        if key then return key;
		else return "  ___XP DE KEY"; end
    end
	if not checkcaller() and getnamecallmethod() == "InvokeServer" and args[1] == "Reset" then
		return;
	end
	if not checkcaller() and getnamecallmethod() == "FireServer" and args[1] == "Reset" then
		return;
	end
    if not checkcaller() and getnamecallmethod() == "Kick" then
        return;
    end
    return oldNamecall(self, ...);
end);
