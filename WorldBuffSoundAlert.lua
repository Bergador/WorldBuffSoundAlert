local WorldBuffMessages = {
    "People of the Horde, citizens of Orgrimmar, come, gather round and celebrate a hero of the Horde. On this day",
    "NEFARIAN IS SLAIN! People of Orgrimmar, bow down before the might of", 
    "Citizens and allies of Stormwind, on this day, history has been made.",
    "Citizens of the Alliance, the Lord of Blackrock is slain! Nefarian has been subdued by the combined might of",
    "Now, only one step remains to rid us of the Soulflayer's threat...",
    "Honor your heroes! On this day, they have dealt a great blow against one of our most hated enemies! The false Warchief, Rend Blackhand, has fallen!"
};

local WorldBuffSoundAlertFrame = CreateFrame("Frame");

WorldBuffSoundAlertFrame:SetScript("OnEvent", function()
    if arg1 ~= nil then
        for i=1,table.getn(WorldBuffMessages) do
            if string.find(arg1, WorldBuffMessages[i]) then
                PlaySoundFile("sound\\interface\\PVPFlagTakenHordeMono.wav");
                return;
            end
        end
    end
end);

WorldBuffSoundAlertFrame:RegisterEvent("CHAT_MSG_MONSTER_YELL")
WorldBuffSoundAlertFrame:RegisterEvent("CHAT_MSG_MONSTER_SAY")
