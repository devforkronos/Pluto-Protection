
local RunService = game:GetService('RunService')
Check = false
Boop = false

if RunService:IsStudio() == false then	
	
	RunService.Heartbeat:Connect(function(step)
		
		if script.Parent:FindFirstChild("HumanoidRootPart") then
			
			if Check == false and Boop == false then	
				
				LastestPos = script.Parent.HumanoidRootPart.Position	
				
				Boop = true
				
				wait(.1)
				
				Check = true
				
				Boop = false
				
			else
				
				if Boop == false then	
					
					local NewPos = script.Parent.HumanoidRootPart.Position	
					
					if (LastestPos - NewPos).Magnitude > 35 and script.Parent:FindFirstChild("AESafe") == nil then
						
						script.Parent.Humanoid.Health = 0	
						
					end	
					
					Check = false
					
					Boop = false
					
end
end
end
end)
end
