
_G.Settings = {
    Players = {
        ["Ignore Me"] = true,
        ["Ignore Others"] = true
    },
    Meshes = {
        Destroy = false,
        LowDetail = true
    },
    Images = {
        Invisible = true,
        LowDetail = false,
        Destroy = false,
    },
    ["No Particles"] = true,
    ["No Camera Effects"] = true,
    ["No Explosions"] = true,
    ["No Clothes"] = true,
    ["Low Water Graphics"] = true,
    ["No Shadows"] = true,
    ["Low Rendering"] = true,
    ["Low Quality Parts"] = true
}

local decalsyeeted = true -- Tăng FPS mạnh nếu bật, nhưng game sẽ xấu

local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain


t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0


l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"


for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
        v.TextureID = "rbxassetid://10385902758728957" -- fake texture
    end
end


for _, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect")
    or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-pls-help-me/twzn/main/fixlag.lua"))()


loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-pls-help-me/twzn/main/arisecrossoverHoa.lua"))()

