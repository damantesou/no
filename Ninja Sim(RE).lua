local A_1   = game:GetService("Workspace")["先生"].Humanoid
local A_2   = "punch"
local Event = game:GetService("ReplicatedStorage").Remotes.Damage

 local A_3 = game.workspace["Godly Punching Bag"].Humanoid
 local A_4 = game.workspace["Punching Bag"].Humanoid
 local A_5 = game.workspace["Punching Dummy"].Humanoid
 local A_6 = game.workspace["Hidden Punching Dummy"].Humanoid
local toggled = false
local keys = "f" -- key to toggle farm
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
 
mouse.KeyDown:connect(function(key)
    if key:lower() == keys then
        toggled = not toggled
        print(tostring(toggled))
    end
end)
 
game:GetService('RunService').Stepped:connect(function()
if toggled then
Event:InvokeServer(A_1, A_2)
Event:InvokeServer(A_3, A_2)
Event:InvokeServer(A_4, A_2)
Event:InvokeServer(A_5, A_2)
Event:InvokeServer(A_6, A_2)

end
end)