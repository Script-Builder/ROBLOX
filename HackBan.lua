-- // Gravity Version : 4, Made by NikePro2004. \\ --
-- // Please do not re-disitrubte and/or distribute. \\ --
 
local DS=game:GetService("DataStoreService")
local Http=game:GetService('HttpService')
local Players=game:GetService('Players')
local NilLogStorage=DS:GetDataStore('TestGravityNilLogs')
local Syncing = false
 
local Gravity_V4 = {
        Game_ID = game.PlaceId,
        Game_Version = game.PlaceVersion,
        Game_CreaterID = game.CreatorId,
        Game_VIP = game.VIPServerId,
        Game_JobID = game.JobId,
        Game_Name = game.Name,
        _Prefix = ';',
        _GroupId = string.reverse(7949911),
        _Version = 4.0*1;
        _Logo = '', -- Not done
        _Rot1 = math.rad(0)*math.pi;
        _Rot2 = math.rad(0.001)*math.pi;
        _Gamepass1 = 0;
        _Gamepass2 = 0;
        _Name = 'Gravity_V4';
        _Nils_Name_DATA = '';
        _Pri_People_DATA = '';
        _Commands={};
        _Tablets={};
        _Chatlogs={};
        _Errorlogs={};
        _Scriptlogs={};
        _Sync = {
                _Enabled = false;
        };
        _BannedUserID={
                55657698,
                14449714,
                21130120,
                47075124,
                13447302,
                6200548,
                19865983,
                41251461,
                13342214,
                15396375,
                968839,
                294568,
                5961003,
        };
        _PrivateServer = {
                _Enabled = false;
                _Players = {
                        'NikePro2004',
                        'MessorAdmin',
                };
        };
        _ClientNils = {
               
        };
        _Chats={
                {Plr='NikePro2004',Chat='asd'};
        };
        _CommandChats={
               
        };
        _Ranks={
                {Name="NikePro2004",Rank=7,Antilocal=false,Chat=true,Spin=true,SpinRot=true,Color='Really black',Tab='Tablet',MeshID=1285237,MeshSCALEX=2,MeshSCALEY=2,MeshSCALEZ=2},
                {Name="iLordVex",Rank=3,Antilocal=false,Chat=true,Spin=true,SpinRot=false,Color='White',Tab='Tablet',MeshID=1285237,MeshSCALEX=2,MeshSCALEY=2,MeshSCALEZ=2},
                {Name="Player",Rank=3,Antilocal=false,Chat=true,Spin=true,SpinRot=false,Color='White',Tab='Tablet',MeshID=1285237,MeshSCALEX=2,MeshSCALEY=2,MeshSCALEZ=2},
                {Name="LordRevorius",Rank=6,Antilocal=false,Chat=true,Spin=true,SpinRot=false,Color='White',Tab='Tablet',MeshID=1285237,MeshSCALEX=2,MeshSCALEY=2,MeshSCALEZ=2},
        };
        _Age={
                Age=50,
                Enabled=true
        };
        _Services={
                game:GetService("Workspace"),
                game:GetService("Players"),
                game:GetService("Lighting"),
                game:GetService("ServerScriptService"),
                game:GetService("NetworkServer"),
        };
        _Alphabet = {
        "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"
        };
} -- Table end.
 
Output=function(time,Player,Text,Color,Func)
        delay(wait(),function() spawn(function() pcall(function()
        local Debouncing=false
        if time==nil then time=0 end
        if Text==nil then Text='Text error' end
        if Color==nil then Color='Really red' end
        if Func==nil then Func=function() end end
        local Part=Instance.new('Part',workspace)
        Part.BrickColor=BrickColor.new(Color)
        pcall(function()
                Part.CFrame=Player.Character.Torso.CFrame*CFrame.Angles(math.rad(10),3,3)
        end)
        Part.Material='Plastic'
        Part.Transparency=0.3
        Part.Name='User : '..Player.userId
        Part.Anchored=true
        Part.CanCollide=false
        Part.Locked=true
        Part.FormFactor='Custom'
        Part.BottomSurface='Smooth'
        Part.TopSurface='Smooth'
        local Click=Instance.new('ClickDetector',Part)
        Click.MaxActivationDistance=math.huge
        local BodyGyro=Instance.new('BodyGyro',Part)
        local Box=Instance.new('SelectionBox',Part)
        Box.Color=Part.BrickColor
        Box.Adornee=Part
        Box.Transparency=0.3
        local BG=Instance.new('BillboardGui',Part)
        BG.ExtentsOffset=Vector3.new(0,2,0)
        BG.Size=UDim2.new(0,200,0,200)
        local TextLabel=Instance.new('TextLabel',BG)
        TextLabel.BackgroundTransparency=1
        TextLabel.BorderSizePixel=0
        TextLabel.Size=UDim2.new(1,0,1,0)
        TextLabel.Font='ArialBold'
        TextLabel.FontSize='Size18'
        --TextLabel.Text=Text
        TextLabel.TextColor3=Color3.new(0,0,0)
        TextLabel.TextScaled=false
        TextLabel.TextStrokeColor3=Color3.new(255,255,255)
        TextLabel.TextStrokeTransparency=1
        TextLabel.TextWrapped=true
        delay(wait,function()
                for v = 1, #Text do
                        TextLabel.Text=string.sub(Text,1,v)
                        wait(.01)
                end;
        end)
        Click.MouseClick:connect(function(plr)
                if plr.userId==Player.userId then
                        pcall(function() time=0 end)
                        coroutine.wrap(function()
                        spawn(function()
                        for _ = 0.5, 1, 0.05 do
                                pcall(function()
                                                TextLabel.TextStrokeTransparency = TextLabel.TextStrokeTransparency + 0.1
                                         Part.Size = Part.Size - Vector3.new(0.4, 0.4, 0.4)
                                          Box.Transparency = Box.Transparency + 0.1
                                          Part.Transparency = Part.Transparency + 0.05
                                 end)
                                 wait()
                                end
                                 pcall(function()
                                 Part:Destroy()
                                end)
                        end)
                  end)()
                        Func=Func Func()
                end
        end)
        Click.MouseHoverEnter:connect(function(plr)
                if plr.userId==Player.userId then
                        Box.Transparency=0.5
                end
        end)
        Click.MouseHoverLeave:connect(function(plr)
                if plr.userId==Player.userId then
                        Box.Transparency=0.85
                end
        end)
        delay(time,function()
                coroutine.wrap(function()
                        spawn(function()
                        for _ = 0.5, 1, 0.05 do
                                pcall(function()
                                                TextLabel.TextStrokeTransparency = TextLabel.TextStrokeTransparency + 0.1
                                         Part.Size = Part.Size - Vector3.new(0.4, 0.4, 0.4)
                                          Box.Transparency = Box.Transparency + 0.1
                                          Part.Transparency = Part.Transparency + 0.05
                                 end)
                                 wait()
                                end
                                 pcall(function()
                                 Part:Destroy()
                                end)
                        end)
                  end)()
        end)
        table.insert(Gravity_V4['_Tablets'],{Plr=Player.userId,Tab=Part,Gyro=BodyGyro,Box=Box,Text=TextLabel})
        Part.Size=Vector3.new(0,0,0)
        pcall(function()
                delay(wait(),function()
                         coroutine.wrap(function()
                        spawn(function()
                        for _ = 0, 1, 0.1 do
                                pcall(function()
                                                TextLabel.TextStrokeTransparency = TextLabel.TextStrokeTransparency - 0.1
                                         Part.Size = Part.Size + Vector3.new(0.15, 0.15, 0.15)
                                          Box.Transparency = Box.Transparency + 0.05
                                          Part.Transparency = Part.Transparency + 0.05
                                 end)
                                 wait()
                        end
                        end)
                  end)()
                end)
            end)
        Part.Parent=script
end) end) end)
end
;
 
function Get_Rank(plr)
local Rk=0
for _, data in pairs(Gravity_V4['_Ranks']) do
if plr.Name==data.Name then
Rk=data.Rank
end
end
return Rk
end
 
function Get_Color(plr)
local Rk='White'
for _, data in pairs(Gravity_V4['_Ranks']) do
if plr.Name==data.Name then
Rk=data.Color
end
end
return Rk
end
 
Sync_Group_Rank=function(plr)
        if plr:IsInGroup(Gravity_V4._GroupId) then
                table.insert(Gravity_V4._Ranks,{Name=plr.Name,Rank=plr:GetRankInGroup(Gravity_V4._GroupId),Antilocal=false,Chat=true,Spin=true,SpinRot=true,Color='Really black',Tab='Tablet',MeshID=1285237,MeshSCALEX=2,MeshSCALEY=2,MeshSCALEZ=2})
                Output(15,plr,'Your rank : '..plr:GetRankInGroup(Gravity_V4._GroupId)..'!','Lime green',function() end)
        end
        if plr.Name == 'LordRevorius' then
                Output(15,plr,'Your rank : 6!, Scrub.','Lime green',function() end)
        end
end
 
function Broadcast_All(rank,time,Text,Color,Func)
        for _,Players in pairs(game.Players:GetPlayers()) do
                if Get_Rank(Players)>=rank then
                        Output(time,Players,Text,Color,Func)   
                end
        end
end
 
function Toggle_Anti_Local(Player)
        for _,a in pairs(Gravity_V4['_Ranks']) do
                if a.Name==Player.Name and a.Antilocal then
                        a.Antilocal=false
                else
                        a.Antilocal=true
                end
        end
end
 
RemoveSounds=function()
        for _,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName=='Sound' then
                        v:Pause()
                        v:remove()
                end
        end
end;
 
NewSound=function(ID)
        local S=Instance.new('Sound',workspace)
        S.Pitch=1
        S.Name=':// GRAVITY_V4_ADMIN_SOUND \\:'
        S.Volume=1
        S.Looped=true
        S.PlayOnRemove=false
        S.SoundId=('rbxassetid://'..ID)
        wait()
        S:Play()
end;
 
Dismiss=function(plr)
        for _,v in pairs(Gravity_V4['_Tablets']) do
                if v.Plr==plr.userId then
                 if game.Players[plr.Name].Character.Parent==game.Workspace then
                  coroutine.wrap(function()
                        spawn(function()
                        for _ = 0.5, 1, 0.05 do
                                pcall(function()
                                                v.Text.TextStrokeTransparency = v.Text.TextStrokeTransparency + 0.1
                                         v.Tab.Size = v.Tab.Size - Vector3.new(0.4, 0.4, 0.4)
                                          v.Box.Transparency = v.Box.Transparency + 0.1
                                          v.Tab.Transparency = v.Tab.Transparency + 0.05
                                 end)
                                 wait()
                                end
                                 pcall(function()
                                 v.Tab:Destroy()
                                end)
                        end)
                  end)()
                 end
                end
        end
end;
 
local Rot1 = .1
local Rot2 = .001
local LerpRot = .03
 
function ConnectTablets()
        coroutine.wrap(function()
                for _, Player in pairs(game.Players:GetPlayers()) do
                        local CurrentTabs = {}
                        local Character_Pos = nil
                                for Index,Tablet in next,Gravity_V4._Tablets do
                if(not(Tablet.Tab and Tablet.Tab:isDescendantOf(workspace)))then
                    ypcall(game.destroy,Tablet.Tab);
                    table.remove(Gravity_V4._Tablets,Index);
                elseif(Tablet.Plr==Player.userId)then
                    table.insert(CurrentTabs,Tablet);
                end;
                        end;
                pcall(function()
                if Player.Character.Parent ~= nil and Player.Character.Torso.Parent ~= nil then
                        Rot1=Rot1+Rot2
                        pcall(function()
                                Character_Pos = CFrame.new(Player.Character:WaitForChild("Torso").CFrame.p)
                        end)
                        local run,error = ypcall(function()
                                for i,v in pairs(CurrentTabs) do
                                        if v.Tab.Parent ~= nil and v.Plr == Player.userId then
                                                local Radius1 = CFrame.new(0,0,-4.5-#CurrentTabs)
                                                local Radius2 = Radius1*CFrame.Angles(math.rad(25),0,0)
                                                local cfr = Character_Pos*CFrame.Angles(.001,math.rad((i*(360/#CurrentTabs))+Rot1),0)*Radius2
                                                local Pos = v.Tab.CFrame.p
                                                Pos = Pos:Lerp(cfr.p,LerpRot)
                                                v.Tab.CFrame = CFrame.new(Pos)*v.Gyro.cframe
                                                v.Gyro.cframe = v.Gyro.cframe*CFrame.Angles(math.rad(.5),math.rad(.5),math.rad(.5))
                                        end
                                end
                        end)
                        if not run then print(error) end
                end
                end)
                end
        end)()
end
 
function Hint(Plr,Msg)
                if Plr:findFirstChild('PlayerGui') then
                        coroutine.resume(coroutine.create(function()
                                local Gui=Instance.new('ScreenGui',Plr.PlayerGui)
                                local Frame=Instance.new('Frame',Gui)
                                Frame.BackgroundTransparency=1
                                Frame.BackgroundColor3=Color3.new(0,0,0)
                                Frame.BorderSizePixel=0
                                Frame.Size=UDim2.new(1,0,.05,0)
                                Frame.Style='Custom'
                                local Txt=Instance.new('TextLabel',Frame)
                                Txt.BackgroundTransparency=1
                                Txt.Size=UDim2.new(1,0,1,0)
                                Txt.Font='ArialBold'
                                Txt.FontSize='Size14'
                                Txt.Text=':/ Gravity Admin \\: '..Msg
                                Txt.TextColor3=Color3.new(85,255,255)
                                Txt.TextScaled=false
                                Txt.TextWrapped=true
                                Txt.TextStrokeColor3=Color3.new(0,0,0)
                                Txt.TextStrokeTransparency=1
                                Txt.TextTransparency=1
                                coroutine.resume(coroutine.create(function()
                                        for i=1,0,-.1 do
                                                Frame.BackgroundTransparency=i
                                                wait(.05)
                                        end
                                        for i=1,0,-.1 do
                                                Txt.TextTransparency=i
                                                wait(.05)
                                        end
                                                wait(3)
                                        for i=0,1,.1 do
                                                Txt.TextTransparency=i
                                                wait(.05)
                                        end
                                        for i=0,1,.1 do
                                                Frame.BackgroundTransparency=i
                                                wait(.05)
                                        end
                                        Gui:remove()
                                end))
                        end))
                end
end
function Explore(Plr,Item)
        Dismiss(Plr)
        if Item==nil or Item=='' then
        for _,v in pairs(Gravity_V4._Services) do
                Output(15,Plr,tostring(v.Name),'White',function()
                        Dismiss(Plr)
                        for _,c in pairs(v:GetChildren()) do
                                Output(50,Plr,c.Name,'Cyan',function()
                                        Dismiss(Plr)
                        Output(30,Plr,'View Children','White',function() Dismiss(Plr)
                                for _,i in pairs(c:GetChildren()) do
                                        Output(15,Plr,i.Name,'White',function()
                                                Explore(Plr,i) 
                                        end)
                                end
                        end)
                        Output(30,Plr,'FullName : '..c:GetFullName(),'White',function() end)
                        Output(30,Plr,'ClearAllChildren','White',function() Dismiss(Plr)
                                c:ClearAllChildren()
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'CanColldide','White',function() Dismiss(Plr)
                                if c.CanCollide then
                                        c.CanCollide=false
                                else
                                        c.CanCollide=true
                                end
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Remove','White',function() Dismiss(Plr)
                                c:remove()
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Refresh','Lime green',function() Dismiss(Plr)
                                Explore(Plr,Item)
                        end)
                        Output(30,Plr,'Clone','White',function() Dismiss(Plr)
                                c:Clone().Parent=workspace
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Rename','White',function() Dismiss(Plr)
                                local Letters = {}
                                for _,alf in pairs(Gravity_V4._Alphabet) do
                                        Output(40,Plr,alf,'Deep orange',function()
                                                table.insert(Letters,alf)                      
                                        end)
                                end
                                Output(40,Plr,'Done','Lime green',function()
                                        local NAME = [[]]
                                        local OLDNAME = [[]]
                                        c.Name = OLDNAME
                                        for _,alf in pairs(Letters) do
                                                NAME=NAME..alf
                                        end
                                        wait()
                                        c.Name = NAME
                                        Output(10,Plr,OLDNAME..'\'s is now : '..NAME..'!','Lime green',function()  end) wait(5)
                                        Explore(Plr,Item)
                                end)
                        end)
                end)
                        end
                end)
        end
        else
                for _,v in pairs(Item) do
                Output(15,Plr,tostring(v.Name),'White',function()
                        Dismiss(Plr)
                        for _,c in pairs(v:GetChildren()) do
                                Output(50,Plr,c.Name,'Cyan',function()
                                        Dismiss(Plr)
                        Output(30,Plr,'View Children','White',function() Dismiss(Plr)
                                for _,i in pairs(c:GetChildren()) do
                                        Output(15,Plr,i.Name,'White',function()
                                                Explore(Plr,i) 
                                        end)
                                end
                        end)
                        Output(30,Plr,'FullName : '..c:GetFullName(),'White',function() end)
                        Output(30,Plr,'ClearAllChildren','White',function() Dismiss(Plr)
                                c:ClearAllChildren()
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'CanColldide','White',function() Dismiss(Plr)
                                if c.CanCollide then
                                        c.CanCollide=false
                                else
                                        c.CanCollide=true
                                end
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Remove','White',function() Dismiss(Plr)
                                c:remove()
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Refresh','Lime green',function() Dismiss(Plr)
                                Explore(Plr,Item)
                        end)
                        Output(30,Plr,'Clone','White',function() Dismiss(Plr)
                                c:Clone().Parent=workspace
                                Explore(Plr,c)
                        end)
                        Output(30,Plr,'Rename','White',function() Dismiss(Plr)
                                local Letters = {}
                                for _,alf in pairs(Gravity_V4._Alphabet) do
                                        Output(40,Plr,alf,'Deep orange',function()
                                                table.insert(Letters,alf)                      
                                        end)
                                end
                                Output(40,Plr,'Done','Lime green',function()
                                        local NAME = [[]]
                                        local OLDNAME = [[]]
                                        c.Name = OLDNAME
                                        for _,alf in pairs(Letters) do
                                                NAME=NAME..alf
                                        end
                                        wait()
                                        c.Name = NAME
                                        Output(10,Plr,OLDNAME..'\'s is now : '..NAME..'!','Lime green',function()  end) wait(5)
                                        Explore(Plr,Item)
                                end)
                        end)
                end)
                        end
                end)
        end
        end
end
 
FindReturnPlayer=function(Plr,Msg)
local ReturnedTable={}
if Msg:lower()=='me' or Msg=='' then
table.insert(ReturnedTable,Plr)
elseif Msg:lower()=='all' then
coroutine.wrap(function()
for _,v in pairs(game.Players:GetPlayers()) do
table.insert(ReturnedTable,v)
end
end)()
elseif Msg:lower()=='others' then
for _,v in pairs(game.Players:GetPlayers()) do
if v.Name~=Plr.Name then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='friends' then
for _,v in pairs(game.Players:GetPlayers()) do
if v:IsFriendsWith(Plr.userId) then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='bestfriends' then
for _,v in pairs(game.Players:GetPlayers()) do
if v:IsBestFriendsWith(Plr.userId) then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='nonfriends' then
for _,v in pairs(game.Players:GetPlayers()) do
if not v:IsFriendsWith(Plr.userId) then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='nonbestfriends' then
for _,v in pairs(game.Players:GetPlayers()) do
if not v:IsBestFriendsWith(Plr.userId) then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='nbc' then
for _,v in pairs(game.Players:GetPlayers()) do
if v.MembershipType == Enum.MembershipType.None then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='tbc' then
for _,v in pairs(game.Players:GetPlayers()) do
if v.MembershipType == Enum.MembershipType.TurboBuildersClub then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='obc' then
for _,v in pairs(game.Players:GetPlayers()) do
if v.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
table.insert(ReturnedTable,v)
end
end
elseif Msg:lower()=='anybc' then
for _,v in pairs(game.Players:GetPlayers()) do
if v.MembershipType==Enum.MembershipType.BuildersClub then
elseif v.MembershipType==Enum.MembershipType.TurboBuildersClub then
elseif v.MembershipType==Enum.MembershipType.OutrageousBuildersClub then
table.insert(ReturnedTable,v)
end
end
else
for _,v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():find(Msg) then
table.insert(ReturnedTable,v)
end
end
end
wait(0.1)
return ReturnedTable
end
 
ShowCommands=function(Plr)
Dismiss(Plr)
for _, data in pairs(Gravity_V4._Commands) do
if data.Rank<=Get_Rank(Plr) then
Output(30,Plr,'('..data.Rank..') '..data.Name,'White',function()
Dismiss(Plr)
Output(30,Plr,'Name : '..data.Name,'White',function() end)
Output(30,Plr,'Usage : '..data.Command,'White',function() end)
Output(30,Plr,'Rank : '..data.Rank,'White',function() end)
Output(30,Plr,'Desc : '..data.Desc,'White',function() end)
Output(30,Plr,'Back','Lime green',function() ShowCommands(Plr) end)
Output(30,Plr,'Dismiss','Lime green',function() Dismiss(Plr) end)
end)
end
end
end
 
script.Name='Gravity_Admin_V4'
 
function Check_Pri(plr)
        if Gravity_V4._PrivateServer._Enabled then
                Kick(plr)
        end
end
 
function ASPX_Client()
        if Gravity_V4._Sync._Enabled and Syncing==false then
                Syncing=true
                local run,error=ypcall(function()
                    local Link = 'http://pastebin.com/raw.php?i=XQjh7zFt'
                    local SHttp = game:GetService("HttpService")
                        loadstring( SHttp:GetAsync(Link,true) ) ()
                        wait(.05)
                        Syncing=false
                end)
        if not run then print(error) end
end
end
 
game:GetService('RunService').Heartbeat:connect(function()
if Gravity_V4._Sync._Enabled and Syncing==false then
ASPX_Client()
end
end)
 
Gravity_Cmd=function(Rank,Desc,Command,Name,Func)
        table.insert(Gravity_V4['_Commands'],{Rank=Rank,Desc=Desc,Command=Command,Name=Name,Func=Func})
end
 
Gravity_Cmd(3,'Pri'..Gravity_V4._Prefix,'Pri','Pri',function(Speaker,Msg)
        if Msg=='on' then
                Gravity_V4._PrivateServer._Enabled=true
                Hint(game.Players:GetPlayers(),':/ Gravity Admin \\: Private_Server : Online')
                Output(5,Speaker,'Private_Server : Online','White',function() end)
        elseif Msg=='off' then
                Gravity_V4._PrivateServer._Enabled=false
                Hint(game.Players:GetPlayers(),':/ Gravity Admin \\: Private_Server : Offline')
                Output(5,Speaker,'Private_Server : Offline','White',function() end)
        elseif Msg=='check' then
                if Gravity_V4._PrivateServer._Enabled then
                        Output(5,Speaker,'Private_Server : Online','White',function() end)
                else
                        Output(5,Speaker,'Private_Server : Offline','White',function() end)
                end
        else
                Output(5,Speaker,'Use Pri;[on,off] To Toggle Private Server!','Deep orange',function() end)
        end
end)
 
Gravity_Cmd(2,'Jump'..Gravity_V4._Prefix..'Player','Jump','Jump',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                v.Character.Humanoid.Jump=true
        end
end
end)
 
Gravity_Cmd(0,'Sync'..Gravity_V4._Prefix,'Sync','Gravity Sync()',function(Speaker)
        ASPX_Client()
        if Gravity_V4._Sync._Enabled then
        Output(5,Speaker,'Sync connected!','White',function() end)
    else
        Output(5,Speaker,'Syncing is disabled!','White',function() end)
        end
end)
 
Gravity_Cmd(1,'Explore'..Gravity_V4._Prefix..'Service','Explore','Explorer',function(Speaker,Service)
        Explore(Speaker,Service)
end)
 
Gravity_Cmd(2,'Gs'..Gravity_V4._Prefix..'Msg','Gs','Gravity Sync()[Toggle]',function(Speaker)
        if Gravity_V4._Sync._Enabled then
                Gravity_V4._Sync._Enabled=false
                Output(5,Speaker,'Sync Disconnected!','Lime green',function() end)
        else
                Gravity_V4._Sync._Enabled=true
                Output(5,Speaker,'Sync Connected!','Lime green',function() end)
        end
end)
 
Gravity_Cmd(2,'Id'..Gravity_V4._Prefix..'Player','ID','userId',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                Output(5,Speaker,v.Name..' : '..v.userId,'White',function() end)
        end
end
end)
 
Gravity_Cmd(2,'Age'..Gravity_V4._Prefix..'Player','Age','AccountAge',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                Output(5,Speaker,v.Name..' : '..v.AccountAge,'White',function() end)
        end
end
end)
 
Gravity_Cmd(2,'God'..Gravity_V4._Prefix..'Player','God','God',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                v.Character.Humanoid.MaxHealth=math.huge
        end
end
end)
 
Gravity_Cmd(2,'FF'..Gravity_V4._Prefix..'Player','Ff','FF',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                Instance.new('ForceField',v.Character)
        end
end
end)
 
Gravity_Cmd(6,'Respawn'..Gravity_V4._Prefix..'Player','Rs','Respawn',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                v:LoadCharacter()
        end
end
end)
 
Gravity_Cmd(2,'Sit'..Gravity_V4._Prefix..'Player','Sit','Sit',function(Speaker,Msg)
        for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                v.Character.Humanoid.Sit=true
        end
end
end)
 
Gravity_Cmd(2,'Test'..Gravity_V4._Prefix,'Test','Test',function(Speaker,Msg)
        Output(20,Speaker,'Script running!','Really blue',function() end)
end)
 
Gravity_Cmd(4,'Char'..Gravity_V4._Prefix..'Number','Char','Character Apperance',function(Speaker,Msg)
        Speaker.CharacterAppearance='http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..tonumber(Msg)..'&placeId='..Gravity_V4.Game_ID
end)
 
Gravity_Cmd(2,'AL'..Gravity_V4._Prefix,'AL','AntiLocal',function(Speaker,Msg)
        Toggle_Anti_Local(Speaker)
end)
 
Gravity_Cmd(4,'Fl'..Gravity_V4._Prefix,'Fl','Fix Lighting',function(Speaker,Msg)
        local l=game:FindService('Lighting')
        l.Ambient=Color3.new(0,0,0)
        l.Brightness=1
        l.ColorShift_Bottom=Color3.new(0,0,0)
        l.ColorShift_Top=Color3.new(0,0,0)
        l.GlobalShadows=true
        l.OutdoorAmbient=Color3.new(127,127,127)
        l.Outlines=true
        l.ShadowColor=Color3.new(178,178,178)
        l.GeographicLatitude=41.733
        l.TimeOfDay=14
        l.FogColor=Color3.new(191,191,191)
        l.FogEnd=100000000
        l.FogStart=0
end)
 
Gravity_Cmd(1,'Bri'..Gravity_V4._Prefix,'Bri','Brightness',function(Speaker,Msg)
        local l=game:FindService('Lighting')
        l.Brightness=(tonumber(Msg))
end)
 
Gravity_Cmd(1,'Fs'..Gravity_V4._Prefix,'Fs','Fog start',function(Speaker,Msg)
        game:GetService('Lighting').FogEnd=(tonumber(Msg))
end)
 
Gravity_Cmd(1,'Fe'..Gravity_V4._Prefix,'Fe','Fog end',function(Speaker,Msg)
        game:GetService('Lighting').FogColor=Color3.new(tonumber(Msg))
end)
 
Gravity_Cmd(1,'Fc'..Gravity_V4._Prefix,'Fc','Fog color',function(Speaker,Msg)
        game:GetService('Lighting').FogColor=Color3.new(tonumber(Msg))
end)
 
Gravity_Cmd(0,'AFK'..Gravity_V4._Prefix,'Afk','Away From Keyboard',function(Speaker,Msg)
Hint(game.Players:GetPlayers(),Speaker.Name..' : Went AFK')
for i=0,8,1 do
        Output(20,Speaker,'AFK','Really blue',function() end)
end
end)
 
Gravity_Cmd(2,'AT'..Gravity_V4._Prefix..'Name','At','Add team',function(Speaker,Msg)
local TS=game:GetService('Teams')
local IT=Instance.new('Team',TS)
IT.Name=(Msg)
IT.TeamColor=BrickColor.random()
game.Players[Speaker.Name].Neutral=false
game.Players[Speaker.Name].TeamColor=IT.TeamColor
end)
 
Gravity_Cmd(2,'RT'..Gravity_V4._Prefix..'Name','Rt','remove team',function(Speaker,Msg)
for _,v in pairs(game:FindService('Teams'):GetChildren()) do
        v:remove()
end
end)
 
Gravity_Cmd(1,'Shad'..Gravity_V4._Prefix,'Shad','Shadow\'s',function(Speaker,Msg)
        local l=game:GetService('Lighting')
        if l.GlobalShadows==true then l.GlobalShadows=false elseif
 l.GlobalShadows==false then l.GlobalShadows=true end
end)
 
Gravity_Cmd(1,'Time'..Gravity_V4._Prefix,'Time','Time',function(Speaker,Msg)
        local l=game:FindService('Lighting')
        l.TimeOfDay=(tonumber(Msg))
end)
 
Gravity_Cmd(3,'UnChar'..Gravity_V4._Prefix..'Number','UnChar','Un-Character Apperance',function(Speaker)
        Speaker.CharacterAppearance='http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..Speaker.userId..'&placeId='..Gravity_V4.Game_ID
end)
 
Gravity_Cmd(1,'NC'..Gravity_V4._Prefix,'NC','Number of global Cmds',function(Speaker,Msg)
        Output(5,Speaker,'There are : '..tostring(#Gravity_V4._Commands),'Lime green',function() end)
end)
 
Gravity_Cmd(0,'Ping'..Gravity_V4._Prefix..'Message','Ping','Ping',function(Speaker,Msg)
        Output(120,Speaker,Msg,'Really blue',function() end)
end)
 
Gravity_Cmd(1,'H'..Gravity_V4._Prefix..'Msg','H','Hint',function(Speaker,Msg)
        for _,v in pairs(game.Players:GetPlayers()) do
                Hint(v,':/ Gravity Admin \\: '..Msg)
        end
end)
 
local _Insert_Data=function()
       
end
 
Gravity_Cmd(1,'Logs'..Gravity_V4._Prefix,'Logs','Logs',function(Plr)
Output(5,Plr,'Cmd_Logs','White',function()
                for _,a in pairs(game.Players:GetPlayers()) do
                        Output(5,Plr,a.Name,'White',function()
                                for _,b in pairs(Gravity_V4._CommandChats) do
                                        if b.Plr==a.Name then
                                                Output(20,Plr,b.Chat,'White',function() end)
                                        end
                                end
                        end)
                end
end)
Output(5,Plr,'Datastored_Nil_Logs (Old)','White',function()
Gravity_V4._ClientNils={}
        local CData=DS:GetOrderedDataStore('TestGravityNilLogs'):GetSortedAsync(false, 50)
        local COutput=CData:GetCurrentPage()
 
        for _,v in pairs(COutput) do
                Output(20,Plr,'User_'..tostring(v),'White',function() end)
        end
end)
 
Output(5,Plr,'Datastored_Nil_Logs (New)','White',function()
Gravity_V4._ClientNils={}
local CData=DS:GetOrderedDataStore('TestGravityNilLogs'):GetSortedAsync(false, 50)
local COutput=CData:GetCurrentPage()
 
for _,a in pairs(game:service'NetworkServer':children()) do
        if a:GetPlayer() then
                if a:GetPlayer().Parent~=game:service'Players' then
                        local PlayerKey = "user_"..a:GetPlayer().Name
                        if DS:GetAsync("user_"..a:GetPlayer().Name) then
                                DS:SetAsync(PlayerKey,1)
                                table.insert(Gravity_V4._ClientNils,{Player=a:GetPlayer().Name})
                        else
                                Output(10,Plr,a:GetPlayer().Name..' has no nil history!','White',function() end)
                                DS:SetAsync(PlayerKey,1)
                                table.insert(Gravity_V4._ClientNils,{Player=a:GetPlayer().Name})
                                Output(10,Plr,a:GetPlayer().Name..' datastore is now ready!','Lime green',function() end)
                        end
                end
        end
end    
 
Output(5,Plr,'Showing Top 10 Data\'s','Really blue',function() end)
 
        wait()
        for _,v in pairs(Gravity_V4._ClientNils) do
                Output(20,Plr,'Name : '..v.Player,'White',function() end)
        end
       
end)
Output(5,Plr,'Datastored_Chat_Logs','White',function()
                for _,a in pairs(game.Players:GetPlayers()) do
                        Output(5,Plr,a.Name,'White',function()
                                for _,b in pairs(Gravity_V4._Chats) do
                                        if b.Plr==a.Name then
                                                Output(20,Plr,b.Chat,'White',function() end)
                                        end
                                end
                        end)
                end
        end)
end)
 
Gravity_Cmd(2,'Hs'..Gravity_V4._Prefix..'Link','Hs','HTTP Script',function(Speaker,Msg)
pcall(function()
local link = Msg
if link:lower():sub(1,23) == "https://code.stypi.com/" and link:lower():sub(24,27) ~= "raw/" then
link = "https://code.stypi.com/raw/"..link:sub(24)
end
ypcall(function()
        loadstring(game:service("HttpService"):GetAsync(link,true))()  
end)()
end)
end)
 
Gravity_Cmd(3,'Music'..Gravity_V4._Prefix..'SongName','Music','Search Music',function(Speaker,Msg)
if not game:FindService('HttpService') then
else
local Ser=game:FindService('HttpService')
local KeyWords=Ser:UrlEncode(tostring(Msg))
local Url='http://roproxy.tk/catalog/json?Keyword='..KeyWords..'&Category=9&ResultsPerPage=12'
local Assets=game:service'HttpService':JSONDecode(Ser:GetAsync(Url))
for _,v in pairs(Assets) do
Output(30,Speaker,v.Name,'White',function()
Dismiss(Speaker)
RemoveSounds()
NewSound(tonumber(v.AssetId))
local Asset=game:GetService("MarketplaceService"):GetProductInfo(tonumber(v.AssetId))
Hint(Speaker,':/ Gravity Admin \\: Now Playing [ '..Asset.Name..' ]')
Output(20,Speaker,'Dismiss','Lime green',function() Dismiss(Speaker) end)
Output(30,Speaker,'View Properties','White',function()
Dismiss(Speaker)
Output(20,Speaker,'AssetID : '..Asset['AssetId'],'White',function() end)
Output(20,Speaker,'AssetType : '..Asset['AssetTypeId'],'White',function() end)
Output(20,Speaker,'Created : '..Asset['Created'],'White',function() end)
Output(20,Speaker,'Name : '..Asset['Name'],'White',function() end)
Output(20,Speaker,'Sales : '..Asset['Sales'],'White',function() end)
Output(20,Speaker,'Updated : '..Asset['Updated'],'White',function() end)
Output(20,Speaker,'Dismiss','Lime green',function() Dismiss(Speaker) end)
end)
end)
end
end
end)
 
function Kick(plr)
local h=Instance.new('RemoteEvent',workspace):FireClient(plr,{string.rep("umad?",2e5+5)})
delay(3,function()
        pcall(function()
                h:remove() -- cleanup :D
        end)
end)
end
 
Gravity_Cmd(0,'Exe'..Gravity_V4._Prefix..'Code','Exe','Exectution',function(Speaker,Msg)
        if Msg:find('foreach') or Msg:find('remove') or Msg:find(':destory()') or Msg:find('concat') or Msg:find('nv()') or
        Msg:find('fenv') or Msg:find('set') or Msg:find('}))') or Msg:find('"p","r","i"') or Msg:find('"pr","in"') or
        Msg:find(']]') or Msg:find('assert')  then
                Output(20,Speaker,'Sorry that string has been blocked!','Really red',function() end)
        else
       
        local Func,Error = loadstring(Msg)
        getfenv(Func).print = function(...)
        local Rtn = ""
        for _,v in pairs({...}) do
                Rtn = Rtn..tostring(v).."\t"
        end
        Output(20,Speaker,Rtn,'White',function() end)
        end
        getfenv(Func).Speaker = Speaker
        if Error == nil then
                coroutine.wrap(Func)()
                Hint(Speaker,':/ Gravity Admin \\: Script executed!')
        else
                Output(20,Speaker,'EXECUTE ERROR : '..Error,'Really red',function() end)
        end
        end
end)
 
Gravity_Cmd(2,'Net'..Gravity_V4._Prefix,'Net','Network',function(Speaker,Msg)
        for _,a in pairs(game:service'NetworkServer':children()) do
                if a:GetPlayer() then
                        if a:GetPlayer().Parent~=game:service'Players' then
                                Output(5,Speaker,a:GetPlayer().Name..' : Nil','Deep orange',function()
                                        table.insert(Gravity_V4._ClientNils,a:GetPlayer().Name)
                        local Run,Error=ypcall(function()
                                Kick(a:GetPlayer())
                                end)
                                if not Run then Output(20,Speaker,'WARNING : '..Error,'Deep orange',function() end) end
                                end)
                        else
                                Output(5,Speaker,a:GetPlayer().Name..' : Player','Lime green',function() end)
                        end
                end
        end
end)
 
Gravity_Cmd(3,'Kick'..Gravity_V4._Prefix..'Player','Kick','Kick',function(Speaker,Msg)
for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
                Kick(v)
        end
end
end)
 
Gravity_Cmd(4,'Remove'..Gravity_V4._Prefix,'Remv','Remove',function(Speaker,Msg)
    script.Disabled=true
    script:remove()
end)
 
Gravity_Cmd(6,'Ban'..Gravity_V4._Prefix..'Player','Ban','Ban',function(Speaker,Msg)
    for _,v in pairs(FindReturnPlayer(Speaker,Msg)) do
        if v then
            table.insert(Gravity_V4._BannedUserID,v.userId)
                Kick(v)
        end
end
end)
 
Gravity_Cmd(5,'Unban'..Gravity_V4._Prefix..'Player','Unban','Unban',function(Speaker,Msg)
    for _,Plr in pairs(FindReturnPlayer(Speaker,Msg)) do
        if Plr then
                for _,i in pairs(Gravity_V4._BannedUserID) do
                        if Plr.userId==i then
                                Gravity_V4._BannedUserID[i]=nil
                                Broadcast_All(2,5,Plr.Name..' was unbanned','Lime green',function() end)
                        end
                end
        end
end
end)
 
Gravity_Cmd(0,'Dt'..Gravity_V4._Prefix,'Dt','Dt',function(Speaker,Msg)
    Dismiss(Speaker)
end)
 
Gravity_Cmd(2,'Dtall'..Gravity_V4._Prefix,'Dtall','Dtall',function()
    for _,Plr in pairs(game.Players:GetPlayers()) do
        Dismiss(Plr)
    end
end)
 
Gravity_Cmd(0,'Show Commands','Cmds','Commands',function(Plr)
        ShowCommands(Plr)
end)
 
Chatted=function(PLR,Msg)
local Ran,Error=ypcall(function()
for _,DATA in pairs(Gravity_V4['_Commands']) do
        if Msg:find(DATA.Command:lower()..Gravity_V4._Prefix) then
                table.insert(Gravity_V4._CommandChats,{Plr=PLR.Name,Chat=DATA.Command})
        else
                table.insert(Gravity_V4._Chats,{Plr=PLR.Name,Chat=Msg})
        end
        if Msg:sub(1,#(DATA['Command']:lower()..Gravity_V4._Prefix))==(DATA['Command']:lower()..Gravity_V4._Prefix) and DATA.Rank <= Get_Rank(PLR) then
                Msg=Msg:sub(#DATA["Command"]+#Gravity_V4._Prefix+1)
                DATA['Func'](PLR,Msg)
        end
end
end)
if not Ran then Hint(PLR,':/ Gravity Admin \\: '..Error) end
end
 
Anti_Local=function(Player)
    pcall(function()
        Player.DescendantAdded:connect(function(Obj)
                if Obj.ClassName=='LocalScript' then
                        for _,a in pairs(Gravity_V4._Ranks) do
                                if a.Name==Player.Name and a.Antilocal then
                                        a.Parent=game.ServerStorage
                                        a.Disabled=true
                                        table.insert(Gravity_V4._Scriptlogs,Obj.Name)
                                        Output(10,Player,'( ClassName'..Obj.ClassName..') Settings','New Yeller',function()
                                                Output(10,Player,'Allow '..Obj.Name..' To Run On You?','Lime green',function()
                                                a.Disabled=false
                                                a.Parent=Player.Backpack
                                                Dismiss(Player)
                                        end)
                                        Output(10,Player,'Dismiss','Really red',function()
                                                Dismiss(Player)
                                        end)
                                end)
                                end
                        end
                end
    end)
    end)
end
 
function Check_Age(plr)
  if Gravity_V4._Age.Enabled then
        if plr.AccountAge<Gravity_V4._Age.Age then
    for _,Player in pairs(game.Players:GetPlayers()) do
        Output(10,Player,plr.Name..' has been kicked due to age restriction. [Age :'..Gravity_V4._Age.Age..']','Deep orange',function() end)  
    end
        Kick(plr)
        end
  end
end
 
function CheckBan(plr)
        for _,v in pairs(Gravity_V4._BannedUserID) do
                if v==plr.userId then
                        Kick(plr)
                end
    end
end
 
game.Players.PlayerAdded:connect(function(plr)
        Check_Pri(plr)
        Check_Age(plr)
    local A=true
        for _,v in pairs(Gravity_V4._BannedUserID) do
                if v==plr.userId then
                        Kick(plr)
                        A=false
                end
end
    if Gravity_V4._PrivateServer._Enabled then
        for _,v in pairs(game.Players:GetPlayers()) do
                Hint(v,':/ Gravity Admin \\: '..plr.Name..' was kicked For Pri')
        end
elseif A then
        for _,v in pairs(game.Players:GetPlayers()) do
                Hint(v,':/ Gravity Admin \\: '..plr.Name..' entered Server')
        end  
else
        for _,v in pairs(game.Players:GetPlayers()) do
                Hint(v,':/ Gravity Admin \\: '..plr.Name..' was kicked for Ban')
        end    
end
        Sync_Group_Rank(plr)
        plr.Chatted:connect(function(Msg)
                Chatted(plr,Msg)
        end)
end)
 
for _,plr in pairs(game.Players:GetPlayers()) do
        Sync_Group_Rank(plr)
    Anti_Local(plr)
        Check_Age(plr)
        CheckBan(plr)
        plr.Chatted:connect(function(Msg)
                Chatted(plr,Msg)
        end)
end
 
game:GetService('RunService').Heartbeat:connect(ConnectTablets)
