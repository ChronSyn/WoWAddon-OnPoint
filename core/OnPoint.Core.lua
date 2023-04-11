local an, ans = ...

OP_Core = OP_Core or {};
OP_Core.Frames = OP_Core.Frames or {};
OP_Core.Frames.OPFrame = CreateFrame("frame")
OnPoint = LibStub("AceAddon-3.0"):NewAddon("OnPoint", "AceConsole-3.0")

function OnPoint:OnInitialize()
  self:Print("Loaded!")
end

-- Called when the addon is enabled
function OnPoint:OnEnable()
end

-- Called when the addon is disabled
function OnPoint:OnDisable()
end
