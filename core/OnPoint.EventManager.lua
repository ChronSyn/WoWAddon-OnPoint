local an, ans = ...

OP_EventManager = OP_EventManager or {}

function SetTimeout(callback, timeoutInMs)
  if callback == nil then
    return
  end

  if timeoutInMs == nil then
    return
  end

  local initTimer;
  initTimer = C_Timer.NewTimer(
    timeoutInMs / 1000, function()
      callback()
      initTimer:Cancel()
  end)
  return initTimer
end

OP_Core.Frames.OPFrame:SetScript("OnEvent", function(self, event, ...)
  if event == "QUEST_POI_UPDATE" then
    SetTimeout(function ()
      -- print("Resetting POI track to user mark")
      C_SuperTrack.SetSuperTrackedUserWaypoint(true)
    end, 10)
  end
end)