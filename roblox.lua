Plrs = game:GetService("Players")

me = Plrs.LocalPlayer
char = me.Character
Modelname = "Warhammah"
Toolname = "Warhammar"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
effectOn = false
Hurt = false
Leghurt = false
Deb = true
LegDeb = true
Able = true
Resting = false
RestingAnim = false
AbleG = true
Prop = {Damage = 42, Legdmg = 34, AS = 28, ShockDMG = 50, Rage = 200, RageIncome = 0.32, MaxRage = 200}
Prop.AS = Prop.AS/300
Cam = workspace.CurrentCamera

ToolIcon = "http://www.roblox.com/asset/?id=49192762"
MouseIc = "http://www.roblox.com/asset/?id=49192792"
MouseDo = "http://www.roblox.com/asset/?id=49192819"

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BF = function(P)
		local bf = Instance.new("BodyForce",P)
		bf.force = Vector3.new(0, P:GetMass()*187, 0)
		return bf
	end,
	BP = function(P)
		local bp = Instance.new("BodyPosition",P)
		bp.maxForce = Vector3.new(math.huge, 0, math.huge)
		bp.P = 14000
