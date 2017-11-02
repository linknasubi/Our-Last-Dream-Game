function love.load()

font = love.graphics.newFont(32)
	love.graphics.setFont(font)

		MomentSpeech1 = 0
		MomentAction = 0
		MomentAfter = 0
		GoodAction = 0
		BadAction = 1
		SpecialSpeech = 0
		MomentAnimation = 1
		MomentAnimation2 = 1
		MomentAnimation3 = 1
		Blacking_Color = 0
		MomentAudio1 = false
		
		
		DurationDoor = love.sound.newDecoder("DoorClosing.mp3")
		
		
		

		
		
		
		Main_Sound = love.audio.newSource("254202_wjoojoo_silence2.mp3")
		Main_Sound:setVolume(0.6) 
		DoorClosing = love.audio.newSource("DoorClosing.mp3", "stream")
		BreakingGlass = love.audio.newSource("Glass_Breaking.mp3")
		DoorLocked = love.audio.newSource("DoorLocked.mp3")
		KeyOpen = love.audio.newSource("KeyOpen.mp3")
		Maree_theme = love.audio.newSource("danosongs.com-remember-the-stars-jazz-trumpet.mp3") 
		Door_Falling = love.audio.newSource("Door_Falling.mp3")
		ClairDeLune = love.audio.newSource("Clair de lune.mp3")
		
		
local Work = {


Key = {Key = "<<" },

Speechs = {Speech1 = { "Where am i ?"}, Speech2 = { "That's my house..." }



},

Actions = { Action1 = "Call For Someone", Action2 = { Action21 = "Check Some Door", Action22 = "Check Kitchen's Door", Action23 = "Check Dinner Room's Door",
 Action24 = "Check Bathroom's Door", Action25 ="Check Nursery's Door", Action26 ="Check Garden Greenhouse's Room"}, Action3 = { Action31 ="Check First Door", Action32 ="Check Second Door", Action33 = "Check Third Door"},
 Action4 = {Action41 = "Pick Up", Action42 = "Don't Pick Up"}

},

Reactions = { Reaction1 = "Locked", Reaction2 = "You Enter In The Bathroom", Reaction3 ="Nothing Happens", Reaction4 = {Reaction41 = "What a horrible smell!!", Reaction42 = "...", Reaction43 = "A...key ?"}}

}

textbox = love.graphics.newImage("Textbox.png") -- Width = 1 and Height = 0,415
CentralHouse = love.graphics.newImage("Another_Map.png")
Toilet = love.graphics.newImage("Toilets_Tile.png")
Toilet2 = love.graphics.newImage("Toilets_Tile2.png")
Toilet3 = love.graphics.newImage("Toilets_Tile3.png")
Toilet_Door1 = love.graphics.newImage("Toilet_Door_1.png")
Toilet_Door2 = love.graphics.newImage("Toilet_Door_2.png")
Toilet_Door3 = love.graphics.newImage("Toilet_Door_3.png")
CentralHouse2 = love.graphics.newImage("Another_Map2.png")
CentralHouse3 = love.graphics.newImage("Another_Map3.png")
CentralHouse4 = love.graphics.newImage("Another_Map4.png")
CentralHouse5 = love.graphics.newImage("Another_Map5.png")
CentralHouse6 = love.graphics.newImage("Another_Map6.png")
CentralHouse7 = love.graphics.newImage("Another_Map7.png")
CentralHouse8 = love.graphics.newImage("Another_Map8.png")
CentralHouse9 = love.graphics.newImage("Another_Map9.png")
Nursery = love.graphics.newImage("Nursery1.png")
Nursery2 = love.graphics.newImage("Nursery2.png")
Nursery3 = love.graphics.newImage("Nursery3.png")
Nursery4 = love.graphics.newImage("Nursery4.png")
Nursery5 = love.graphics.newImage("Nursery5.png")
Nursery6 = love.graphics.newImage("Nursery6.png")
Nursery7 = love.graphics.newImage("Nursery7.png")
Nursery8 = love.graphics.newImage("Nursery8.png")
Maree_Cine = love.graphics.newImage("Maree_Cine.png")
Maree_Cine2 = love.graphics.newImage("Maree_Cine2.png")
Nursery_Cine1 = love.graphics.newImage("Nursery_Cine1.png")
Nursery_Cine2 = love.graphics.newImage("Nursery_Cine2.png")
Nursery_Cine3 = love.graphics.newImage("Nursery_Cine3.png")
Kitchen = love.graphics.newImage("Kitchen.png")
Kitchen2 = love.graphics.newImage("Kitchen2.png")
Kitchen3 = love.graphics.newImage("Kitchen3.png")
Kitchen4 = love.graphics.newImage("Kitchen4.png")
Kitchen5 = love.graphics.newImage("Kitchen5.png")
Kitchen6 = love.graphics.newImage("Kitchen6.png")
Kitchen7 = love.graphics.newImage("Kitchen7.png")
Kitchen8 = love.graphics.newImage("Kitchen8.png")
Kitchen9 = love.graphics.newImage("Kitchen9.png")
Kitchen10 = love.graphics.newImage("Kitchen10.png")
Kitchen11 = love.graphics.newImage("Kitchen11.png")
Kitchen12 = love.graphics.newImage("Kitchen12.png")
Kitchen13 = love.graphics.newImage("Kitchen13.png")
Kitchen14 = love.graphics.newImage("Kitchen14.png")
Jornal = love.graphics.newImage("Jornal.png")
Room1 = love.graphics.newImage("Room.png")
Room2 = love.graphics.newImage("Room2.png")
Room3 = love.graphics.newImage("Room3.png")
Room4 = love.graphics.newImage("Room4.png")
Room5 = love.graphics.newImage("Room5.png")

Garden_Greenhouse = love.graphics.newImage("Garden_Greenhouse's_Room.png")
Garden_Greenhouse2 = love.graphics.newImage("Garden_Greenhouse's_Room2.png")
Garden_Greenhouse3 = love.graphics.newImage("Garden_Greenhouse's_Room3.png")
Toilet_Scared = love.graphics.newImage("Toilet_Scary.png")
Key_Cine = love.graphics.newImage("Key_Cine.png")

function love.update(dt)

FinalMoment = MomentSpeech1 + MomentAction
MomentAudio2 = 0
DurationDoor1 = DurationDoor:getDuration(DoorClosing)

width = textbox:getWidth()
height = textbox:getHeight()
width1 = love.graphics.getWidth( )
height1 = love.graphics.getHeight( )

function love.draw()
		

	
		
		
		
		if height1 <= 801  then
			height = height - 225
		end
		
		if width1 <= 1367  then
			width = width - 250
		end
		
		if height1 >= 767  and height1 <= 901 then
			height = height - 225 + 100
		end
		
		if width1 >= 1368  and width1 <= 1441  then
			width = width - 250 + 225
		end
		

		
		
		if MomentSpeech1 >= 1 then love.audio.play(Main_Sound) end

			
			if MomentSpeech1 == 0 then 
				
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Press 'Z' to interact and the keys to choose", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				

			end
			
			
			if MomentSpeech1 == 1 then 
				
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Speechs.Speech1, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				
				
				
			end
			
				
				
			if MomentSpeech1 == 2 then
				
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Speechs.Speech2, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
					
					

				
			end
			
					
					
		
			if MomentSpeech1 == 3 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action1, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action21, width - width * 0.96,height + 580 + height/2  * 0.01, 800 , left )
			
			
			
			
			if MomentAction <= 0 then MomentAction = 0.01 
			end
			
			if MomentAction >= 0.02 then MomentAction = 0.02
			end	
			
			if MomentSpeech1 == 3 and MomentAction == 0.01 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 3 and MomentAction == 0.02 then 
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 580 + height/2  * 0.01, 800 , left )	
				
			
			end
			
			
			end
			
			
			if FinalMoment == 4.02 then MomentSpeech1 = 6 end
			if FinalMoment == 4.02 then MomentAction = 0.01 end
			
			if MomentSpeech1 == 4  then
			
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction3, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )

			
			
			
			
			if MomentAction <= 0 then MomentAction = 0.01 
			end
			
			if MomentAction >= 0.02 then MomentAction = 0.01
			end	
			
			if MomentSpeech1 == 4 and MomentAction == 0.01 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			

			end
			
			if MomentSpeech1 == 5 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action21, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			
				
			if MomentSpeech1 == 6 then
		

				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action22, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action23, width - width * 0.96,height + 580 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action24, width - width * 0.96,height + 610 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action25, width - width * 0.96,height + 640 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action26, width - width * 0.96,height + 670 + height/2  * 0.01, 800 , left )
			
			
			if MomentAction <= 0 then MomentAction = 0.01 end
			
			
			if MomentAction >= 0.05 then MomentAction = 0.05 end
			

			if MomentSpeech1 == 6 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 6 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 580 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 6 and MomentAction == 0.03 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 610 + height/2  * 0.01, 800 , left )	
			
			end
			
			
			
			if MomentSpeech1 == 6 and MomentAction == 0.04 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 640 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 6 and MomentAction == 0.05 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 670 + height/2  * 0.01, 800 , left )	
			
			end
			
			end
			
			
			if MomentSpeech1 == 7 and MomentAction == 0.03 then MomentAction = 0.01 end
			if FinalMoment == 7.01 or FinalMoment == 7.02 or FinalMoment == 7.04 or FinalMoment == 7.05 then MomentSpeech1 = 8 end
			if FinalMoment == 7.03 then MomentSpeech1 = 10 end
			
			
			if MomentSpeech1 == 8 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction1, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
					love.audio.play(DoorLocked)
					love.audio.pause(DoorLocked)
					love.audio.pause(DoorLocked)
					love.audio.play(DoorLocked)
			
			end
			
			if MomentSpeech1 == 9 then MomentSpeech1 = 6 end
			
			if MomentSpeech1 == 10 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction2, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				
			
			end
			
			
			
			if MomentSpeech1 == 11 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action3.Action31, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action3.Action32, width - width * 0.96,height + 580 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action3.Action33, width - width * 0.96,height + 610 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Leave The Bathroom", width - width * 0.96,height + 640 + height/2  * 0.01, 800 , left )
					love.audio.play(DoorClosing)
					love.audio.pause(DoorClosing)
					love.audio.pause(DoorClosing)
					love.audio.play(DoorClosing)
				
				
				
			if MomentAction <= 0 then MomentAction = 0.01 end
			
			
			if MomentAction >= 0.04 then MomentAction = 0.04 end
			
			
			if MomentSpeech1 == 11 and MomentAction == 0.01 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 11 and MomentAction == 0.02 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 580 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 11 and MomentAction == 0.03 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 610 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 11 and MomentAction == 0.04 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 640 + height/2  * 0.01, 800 , left )	
			
			end
			
			
			end
			
			if FinalMoment == 12.01 then MomentSpeech1 = 13 end
			if FinalMoment == 12.02 then MomentSpeech1 = 15 end
			if FinalMoment == 12.03 then MomentSpeech1 = 17 end
			if FinalMoment == 12.04 then MomentSpeech1 = 6 end
			
			if MomentSpeech1 == 14 then MomentSpeech1 = 11 end
			if MomentSpeech1 == 16 then MomentSpeech1 = 11 end
			
			if MomentSpeech1 == 13 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction4.Reaction42, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			
			if MomentSpeech1 == 15 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction4.Reaction41, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				
			end
			
			if MomentSpeech1 == 17 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction4.Reaction43, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			
			
			if FinalMoment == 18.03 then MomentAction = 0.01 end
			
			if MomentSpeech1 == 18 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action4.Action41, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action4.Action42, width - width * 0.96,height + 580 + height/2  * 0.01, 800 , left )
				
			if MomentAction <= 0 then MomentAction = 0.01 end
			if MomentAction >= 0.02 then MomentAction = 0.02 end

				
				
			if MomentSpeech1 == 18 and MomentAction == 0.01 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 18 and MomentAction == 0.02 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 580 + height/2  * 0.01, 800 , left )	
			
			end
			
			end
			
			if FinalMoment == 19.01 then MomentSpeech1 = 20 end
			if FinalMoment == 19.02 then MomentSpeech1 = 22 end
			
			
			if MomentSpeech1 == 20 then
				
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Picked Up The Key", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			if MomentSpeech1 == 21 then MomentSpeech1 = 24 end
			if MomentSpeech1 == 23 then MomentSpeech1 = 11 end
			
			if MomentSpeech1 == 22 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Door3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Didn't Picked Up The Key", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			if MomentSpeech1 == 24 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("This key doesn't remind me of any other from home", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			if MomentSpeech1 == 25 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Where should i open with this ?", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			if MomentSpeech1 == 26 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That's weird...I feel like someone is watching me...", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			if MomentSpeech1 == 27 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse4,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			

			
			if MomentSpeech1 == 28 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Hahaha...I must be going insane..", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			end
			
			
			
			
			if MomentSpeech1 == 29 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action22, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action23, width - width * 0.96,height + 580 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action25, width - width * 0.96,height + 610 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Actions.Action2.Action26, width - width * 0.96,height + 640 + height/2  * 0.01, 800 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Call For Luca", width - width * 0.96,height + 670 + height/2  * 0.01, 800 , left )
				
			
			if MomentAction <= 0 then MomentAction = 0.01 end
			if MomentAction >= 0.06 then MomentAction = 0.05 end
			
			
			if MomentSpeech1 == 29 and MomentAction == 0.01 then 
			
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 29 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 580 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 29 and MomentAction == 0.03 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 610 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 29 and MomentAction == 0.04 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.21,height + 640 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 29 and MomentAction == 0.05 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 670 + height/2  * 0.01, 800 , left )	
			
			end
			
			
			end
			
			if FinalMoment == 30.01 or FinalMoment == 30.02 or FinalMoment == 30.03 then MomentSpeech1 = 35 end
			if FinalMoment == 30.04 then MomentSpeech1 = 38 end
			if FinalMoment == 30.05 then MomentSpeech1 = 31 end
			if FinalMoment == 30.05 then SpecialSpeech = SpecialSpeech + 1 end
			
			
			if MomentSpeech1 == 31 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("LUCA, LUCA, WHERE ARE YOU ??", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			
			if MomentSpeech1 == 32 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("...", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			
			if MomentSpeech1 == 33 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Nothing Happens", width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			

			if MomentSpeech1 == 34 then MomentSpeech1 = 29 end
			if MomentSpeech1 == 36 then MomentSpeech1 = 29 end
			if FinalMoment == 30.01 and FinalMoment == 30.02 and FinalMoment == 30.03 then MomentSpeech1 = 35 end
			if FinalMoment == 30.04 then MomentSpeech1 = 38 end
			
			
			if MomentSpeech1 == 35 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Reactions.Reaction1, width - width * 0.96,height + 550 + height/2  * 0.01, 800 , left )
			
			
			end
			
			if MomentSpeech1 == 38 then
					
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Use The Key In Garden Greenhouse's Door", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Don't Use The Key In Garden Greenhouse's Door", width - width * 0.96,height + 640 + height/2  * 0.01, 500 , left )
			
			if MomentSpeech1 == 38 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 38 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 640 + height/2  * 0.01, 800 , left )	
			
			end

			if MomentAction <= 0 then MomentAction = 0.01 end
			if MomentAction >= 0.02 then MomentAction = 0.02 end
				
				
			end
			
			if FinalMoment == 39.01 then MomentSpeech1 = 42 end
			if FinalMoment == 39.02 then MomentSpeech1 = 40 end
			
			if MomentSpeech1 == 40 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Didn't Use The Key", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 41 then MomentSpeech1 = 29 end
			
			if MomentSpeech1 == 42 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Used The Key", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 43 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Enter In The Room", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
					love.audio.play(KeyOpen)
					love.audio.pause(KeyOpen)
					love.audio.pause(KeyOpen)
					love.audio.play(KeyOpen)
			
			end
			
			
			if MomentSpeech1 == 44 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			
			
			if MomentSpeech1 == 45 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What the fuck...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.audio.play(Maree_theme)
				Main_Sound:setVolume(0.01)
				Maree_theme:setVolume(0.02) 
			
			end
			
			if MomentSpeech1 == 46 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Who are you ??", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 47 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I am Maree-e-e-e-e-p", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 48 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 49 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Oh yeah, i forgot, no reference to PWord in here", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			
			if MomentSpeech1 == 50 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What are you talking about ????", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 51 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Pleasure, my name is Maree", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 52 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("And what yours ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			end
			
			if MomentSpeech1 == 53 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("My name is Edward...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What's that bandage in your arm ?", width - width * 0.96,height + 580 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("None of your business", width - width * 0.96,height + 610 + height/2  * 0.01, 600 , left )
				
				
			if MomentAction <= 0 then MomentAction = 0.01 
			end
			
			if MomentAction >= 0.03 then MomentAction = 0.03
			end	
				
				if MomentSpeech1 == 53 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 550 + height/2  * 0.01, 800 , left )	
			
				end
				
				if MomentSpeech1 == 53 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.26,height + 580 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 53 and MomentAction == 0.03 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.36,height + 610 + height/2  * 0.01, 800 , left )	
			
			end
				
				
			end
			
			
			if FinalMoment == 54.01 then MomentSpeech1 = 55 end
			if FinalMoment == 54.02 then MomentSpeech1 = 60 end
			if FinalMoment == 54.03 then MomentSpeech1 = 64 end

			if MomentSpeech1 == 55 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Pleasure, Edward, i think that they didn't know about it", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 56 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("They ? What the hell are you talking about ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 57 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hehe..Nothing, so...What are you doing here ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			if MomentSpeech1 == 58 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That's my house...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			if MomentSpeech1 == 59 then MomentSpeech1 = 69  end
			
			if MomentSpeech1 == 60 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("This...Is just some juice hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			
			if MomentSpeech1 == 61 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Ok...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 62 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("So, what are you doing in my house ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 63 then MomentSpeech1 = 69  end
			
			
			if MomentSpeech1 == 64 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I don't know why i did the question, i know you, Edward", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			
			if MomentSpeech1 == 65 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("She Stares At You Deep In Your Eyes", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			end
			
			if MomentSpeech1 == 66 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Let's just get to the point", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			end
			
			if MomentSpeech1 == 67 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400) love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("And what's the point ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			end
			
			if MomentSpeech1 == 68 then MomentSpeech1 = 69 end
			
			if MomentSpeech1 == 69  then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Yeah...We need to talk about it", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			if MomentSpeech1 == 70 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("That's our limbo", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 71 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Limbo ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 72 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Yes, the deads belong to this place", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 73 then
			
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("WHAT?? But i'm not dead!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 74 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Don't you remember your death ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 75 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("NO! I am NOT dead!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 76 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("So, you are lucky, you are just dreaming hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 77 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("So...All of this is just a dream ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 78 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Garden_Greenhouse2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Exactly, come with me", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 79 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Why'd you think that your house has no exit door ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				Main_Sound:setVolume(0.6) 
			
			end
			
			if MomentSpeech1 == 80 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I didn't notice it...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 81 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("And what about the 'help' message ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 82 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("And what about the 'help' message ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			
			
			if MomentSpeech1 == 83 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What message ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			
			if MomentSpeech1 == 84 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Follow me", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 85 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I don't see nothing", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 86 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Is gone...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 87 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Haha, it's alright, sometimes i lose my sanity too hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 88 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("...What do you mean..?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 89 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("You know...stabbing people around, fuck their dead bodys, play with their sanity, these kind of stuff hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 90 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet_Scared,width/2 + 128 , height, 0, top, 1, 0, height)
				
			end
			
			if MomentSpeech1 == 91 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("HAHAHAHAHAHAHAHAHAHAHA", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 92 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("YOUR FACE WAS SO FUNNY HAHA", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 93 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Sorry for the joke..hahaha", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 94 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Get away from me, you freako!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Haha..Funny...", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Let's get to the point, what are you doing in my home ?", width - width * 0.96,height + 650 + height/2  * 0.01, 600 , left )
			
			
			if MomentSpeech1 == 94 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 94 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 94 and MomentAction == 0.03 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 650 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentAction <= 0.01 then MomentAction = 0.01 end
			if MomentAction >= 0.03 then MomentAction = 0.03 end
			
			end
			
			if FinalMoment == 95.01 then MomentSpeech1 = 96 end
			if FinalMoment == 95.02 then MomentSpeech1 = 98 end
			if FinalMoment == 95.03 then MomentSpeech1 = 101 end
			if FinalMoment == 95.01 then BadAction = BadAction + 1 end
			if FinalMoment == 95.02 then GoodAction = GoodAction + 1 end
			if MomentSpeech1 == 96 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hey! I was just kidding, i'd apologise already!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			
			
			
			if MomentSpeech1 == 97 then MomentSpeech1 = 103 end
			
			
			if MomentSpeech1 == 98 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Ha, you got some sense of humor", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 99 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("She Blinks To You", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 100 then MomentSpeech1 = 103 end
			
			
			if MomentSpeech1 == 101 then 
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I...Well..It doesn't matter now", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 102 then MomentSpeech1 = 103 end
			
			
			if MomentSpeech1 == 103 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("So, do you want to get out from here or not ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 104 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Yes", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("No", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left )
			
			
			if MomentAction <= 0.01 then MomentAction = 0.01 end
			if MomentAction >= 0.02 then MomentAction = 0.02 end
			
			if MomentSpeech1 == 104 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 104 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
			end
			
			end

			
			if FinalMoment == 105.02 then MomentSpeech1 = 106 end
			if FinalMoment == 105.01 then MomentSpeech1 = 112 end
			if FinalMoment == 105.02 then GoodAction = GoodAction + 1 end
			if FinalMoment == 105.01 then BadAction = BadAction + 1 end
			
			if MomentSpeech1 == 106 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Do you want to stay with me ??", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 107 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Her Eyes Are Shining", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			
			end
			
			if MomentSpeech1 == 108 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Yes", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("No", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left )
			
			if MomentAction <= 0.01 then MomentAction = 0.01 end
			if MomentAction >= 0.02 then MomentAction = 0.02 end
			
			if MomentSpeech1 == 108 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 108 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
			end
			
			
			end
			
			if FinalMoment == 109.01 then MomentSpeech1 = 110 end
			if FinalMoment == 109.02 then MomentSpeech1 = 112 end
			if FinalMoment == 109.01 then GoodAction = GoodAction + 1 end
			if FinalMoment == 109.02 then BadAction = BadAction + 2 end
			
			if MomentSpeech1 == 110 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("No...You can't..come, i will help you, follow me", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			if MomentSpeech1 == 111 then MomentSpeech1 = 113 end
			
			if MomentSpeech1 == 112 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Oh...I see, so come with me..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			
			end
			
			if MomentSpeech1 == 113 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("For where ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 114 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(Toilet3,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Just follow me", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 115 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse6,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What are you trying to do ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 116 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse6,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Open...this", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 117 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse6,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Fucking", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 118 then
			
			love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse6,width/2 + 128 , height, 0, top, 1, 0, height)
			love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
			love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("DOOR!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
		
			end
			
			if MomentSpeech1 == 120 then MomentSpeech1 = 120 - 1 end
			
			if MomentSpeech1 == 119 then

				FrameAnimation = {}

                for i=1,5 do 

                    table.insert(FrameAnimation, love.graphics.newImage("Animation"..i..".png"))
                end
				
				
                MomentAnimation = MomentAnimation + dt * 3.5
            love.graphics.setColor(255,255,255,400)    love.graphics.draw(FrameAnimation[math.floor(MomentAnimation)],width/2 + 128)

                    if MomentAnimation >= 5 then
                        MomentSpeech1 = 121
                    end
			
					love.audio.play(Door_Falling)
					
			end

			
			if MomentSpeech1 == 121 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Wow", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			
			
			if MomentSpeech1 == 122 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Come", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 123 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Behind you", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 124 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What is this room ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 125 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("That's your house, shouldn't you know ? Hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 126 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What is this 'hehe' that you talks every time ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 127 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("My laugh hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 128 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Stop laugh like that!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I like it...Hehe", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Oh, understood", width - width * 0.96,height + 650 + height/2  * 0.01, 600 , left )
			
			
			if MomentAction <= 0.01 then MomentAction = 0.01 end
			if MomentAction >= 0.03 then MomentAction = 0.03 end
			
			if MomentSpeech1 == 128 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 128 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 128 and MomentAction == 0.03 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 650 + height/2  * 0.01, 800 , left )	
			
			end
			
			
			end
			
			if FinalMoment == 129.01 then MomentSpeech1 = 130 end
			if FinalMoment == 129.02 then MomentSpeech1 = 134 end
			if FinalMoment == 129.03 then MomentSpeech1 = 137 end
			if FinalMoment == 129.01 then BadAction = BadAction + 1 end
			if FinalMoment == 129.02 then GoodAction = GoodAction + 1 end
			
			
			
			if MomentSpeech1 == 130 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Why ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 131 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("It's annoying", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 132 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Oh...Okay, sorry", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 133 then MomentSpeech1 = 137 end
			
			
			if MomentSpeech1 == 134 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Really ?? Haha", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 135 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Nobody never liked it", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 136 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("She Starts To Jump And Pull You By Your Hand", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 137 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I still don't know why there is a nursery in my house", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 138 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I mean...my sister already growed up", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 139 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Now that's her room", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			
			if MomentSpeech1 == 140 and SpecialSpeech == 1 then MomentSpeech1 = 141 end
			if MomentSpeech1 == 140 and SpecialSpeech == 0 then MomentSpeech1 = 145 end
			
			if MomentSpeech1 == 141 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Luca ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 142 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("How do you know her name ???", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 143 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Oh...that makes sense", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 144 then MomentSpeech1 = 149 end
			
			if MomentSpeech1 == 145 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What's your sister's name ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 146 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Luca, she is my younger sister", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 147 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Luca...Beatiful name..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 148 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 149 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("All the way, this is just a dream, that doesn't suposed to makes sense", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 150 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You're right", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 151 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("So, how could i leave from this dream ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 152 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Something is trapping you here", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 153 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What would be...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 154 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("You need to find what is trapping you in here, and probably destroy it", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 155 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hey! Look there", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 156 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 157 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("A key ", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 158 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Key_Cine,width/2 + 128 , height, 0, top, 1, 0, height)
						
			end
			
			if MomentSpeech1 == 159 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery4,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What door it will open ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 160 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery4,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("We gonna to figure it now", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 161 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery6,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Wait a moment", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 162 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery6,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 163 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("This bear...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 165 then MomentSpeech1 = MomentSpeech1 - 1 end
			
			if MomentSpeech1 == 164 then
			
			Vamo={}
			
				for i=1,3 do 
			
					table.insert(Vamo, love.graphics.newImage("Nursery_Cine"..i..".png"))
				end
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Vamo[math.floor(MomentAnimation2)],width/2 + 128)
				MomentAnimation2 = MomentAnimation2 + dt 
					
					
					if MomentAnimation2 >= 3 then
						MomentSpeech1 = 166
					end
			
			end
			
			if MomentSpeech1 == 166 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery_Cine3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("I loved it, Edward!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			
			if MomentSpeech1 == 168 then MomentSpeech1 = MomentSpeech1 - 1 end
			
			if MomentSpeech1 == 167 then
				Blacking_Scene={}
				for i=1,8 do 
				table.insert(Blacking_Scene, love.graphics.newImage("Nursery_Cine_Luca"..i..".png"))
				end

				love.graphics.setColor(255,255,255,Blacking_Color)	love.graphics.draw(Blacking_Scene[math.floor(MomentAnimation3)],width/2 + 128)
				MomentAnimation3 = MomentAnimation3 + dt 
				Blacking_Color = MomentAnimation3 + 400 - 50 * MomentAnimation3
				
				if MomentAnimation3 >= 9 then
						MomentSpeech1 = 169
				end
				
				end
			
			if MomentSpeech1 == 169 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Hey, Ed, did you know about this house ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 170 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Know what ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 171 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("People say that is haunted", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 172 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("These kind of thing doesn't exist, Luca", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 173 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Don't say that, every night i hear strange noises in my room", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 174 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That is what fearful people say hahaha", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 175 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Hey!!I am not fearful!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 177  then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What's it ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 178  then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Nothing...I just want to wake up", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 179 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("So, let's back to the work hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 180 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I am...feeling..uncomfortable", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 181 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What do you mean ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 182 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("All of this...Don't looks like a dream", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 183 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("And who the hell are you ??", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 184 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I...I am just part of your dream, i already told you", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			
			if MomentSpeech1 == 185 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("She Looks Away", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 186 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Let's get out from here", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 187 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Us ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 188 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Why are you being so paranoic ??", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 189 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 190 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Fuck this", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
						
			end
			
			if MomentSpeech1 == 191 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Go behind her", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Check the bear again", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left )
				
				if MomentAction <= 0.01 then MomentAction = 0.01 end
				if MomentAction >= 0.02 then MomentAction = 0.02 end
				
			if MomentSpeech1 == 191 and MomentAction == 0.01 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			if MomentSpeech1 == 191 and MomentAction == 0.02 then
			
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
			end
				
						
			end
			
			if FinalMoment == 192.02 then MomentSpeech1 = 193 end
			if FinalMoment == 192.01 then MomentSpeech1 = 193 end
			
			if MomentSpeech1 == 193 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Someone help me...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 194 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I just want to get out from here..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
			
			end
			
			if MomentSpeech1 == 195 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That...Was her voice ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left )
				
			end
			
			if MomentSpeech1 == 196 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Go behind her", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			if MomentAction <= 0.01 then MomentAction = 0.01 end
			if MomentAction >= 0.01 then MomentAction = 0.01 end
				
			if MomentSpeech1 == 196 and MomentAction == 0.01 then

				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
			end
			
			end
			
			if MomentSpeech1 == 197 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Nursery8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Go behind her", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
			
			if MomentSpeech1 == 198 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("The door is open..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
			
			if MomentSpeech1 == 199 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(CentralHouse8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("I'll go inside", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
			
			if MomentSpeech1 == 200 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Luca ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
			
			if MomentSpeech1 == 201 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What are you doing ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
		
			
			if MomentSpeech1 == 202 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			
			if MomentSpeech1 == 203 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Maree_Cine,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			
			if MomentSpeech1 == 204 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Maree_Cine,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Your face...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end	
			
			
			if MomentSpeech1 == 206 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Ed, come, i wanna show you a thing", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 207 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Wait! Stop running", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 208 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Here! Take a look", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 209 then

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Wow, who is she ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 210 then
			

				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("They said that she was the old resident", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 211 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Maree_Cine2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("She...She's beatiful..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
		
			if MomentSpeech1 == 212 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Maree...", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
				
			
			end
			
			if MomentSpeech1 == 213 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Acuse her", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Comfort her", width - width * 0.96,height + 600 + height/2  * 0.01, 600 , left)
				
				if MomentAction <= 0.01 then MomentAction = 0.01 end
				if MomentAction >= 0.03 then MomentAction = 0.02 end
				
				if MomentSpeech1 == 213 and MomentAction == 0.01 then

				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 550 + height/2  * 0.01, 800 , left )	
			
				end
				
				if MomentSpeech1 == 213 and MomentAction == 0.02 then

				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf(Work.Key.Key, width - width * 0.16,height + 600 + height/2  * 0.01, 800 , left )	
			
				end
				
			end
			
			if FinalMoment == 214.01 then MomentSpeech1 = 215 end
			if FinalMoment == 214.02 then MomentSpeech1 = 400 end
			
			if MomentSpeech1 == 215 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You...You are a ghost", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 216 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("NO!! I am not!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 217 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You are the old resident..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 218 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("NO!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 219 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Who are you, Maree ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 220 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I am no one, i told you..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 221 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("But i need to tell you one thing", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 222 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Don't let them play with you", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 223 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("They who ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 224 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("They are watching us right now", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 225 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Wh-", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end

			
			if MomentSpeech1 == 226 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen4,width/2 + 128 , height, 0, top, 1, 0, height)
			end
			
			if MomentSpeech1 == 227 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen5,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Let me tell you one thing, Edward", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 228 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen6,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("In all these types of worlds", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 229 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen7,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("They are 'god'", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 230 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen8,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Sometimes, a person assessing another worlds", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 231 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen9,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Sometimes a person in his darkroom recording to other thousand", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 232 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen10,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Or just someone watching us casually", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)

				
			end
			
			if MomentSpeech1 == 233 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen10,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("What are you talking about, Maree??!!", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 234 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen10,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Yeah", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 235 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen11,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("What i'm talking about, Maree ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end

			if MomentSpeech1 == 236 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen11,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("You know, Edward", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 237 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen12,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Living people shouldn't be skeptical", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 238 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen12,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Anything can happen to them", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 239 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen12,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Be careful, Edward..", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			
			end
			
			if MomentSpeech1 == 240 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen13,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			
			
			end
			
			if MomentSpeech1 == 241 then
			
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 242 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 243 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Wake up, Ed", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 244 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Luca ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 245 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("It's already 8'o clock", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 246 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("We're going to be late", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 247 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You're right", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 248 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That was just a dream", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 249 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Let's go", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
				
				
			end
			
			if MomentSpeech1 == 250 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room3,width/2 + 128 , height, 0, top, 1, 0, height)
			end
			
			if MomentSpeech1 == 251 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room3,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				
			end
			
			if MomentSpeech1 == 252 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room4,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			
			if MomentSpeech1 == 253 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room4,width/2 + 128 , height, 0, top, 1, 0, height)
			
			end
			
			if MomentSpeech1 == 254 then
			
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("The game development:", 100,100, 600 , left)
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("Gabriel Oliveira Aragão", 100,150, 600 , left)
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("Sounds and music from:", 100,250, 600 , left)
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("https://freesound.org/browse/tags/sound-effects/", 100,300, 900 , left)
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("http://www.danosongs.com/", 100,350, 700 , left)
			love.graphics.setColor(255,255,255,400)	love.graphics.printf("Clair de lune ", 100,400, 600 , left)
			
			
			
			love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 400 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You Hugged Maree", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
			
			end
			
			if MomentSpeech1 == 401 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Edward...Sorry for didn't tell to you", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
				love.audio.play(ClairDeLune)
				ClairDeLune:setVolume(0.6) 
				
			end
			
			if MomentSpeech1 == 402 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("It's alright, Maree", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			
			if MomentSpeech1 == 403 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I forgot how good is to have someone to talk to", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 404 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Don't worry about this, Maree", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 405 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("You know, Edward, you are such a good person", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 406 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("I could never hurt you", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
				
			end
			
				if BadAction == 0 and MomentSpeech1 == 407 then MomentSpeech1 = 409 end
				if BadAction >= 1 and MomentSpeech1 == 407 then MomentSpeech1 = 411 end
			
			if MomentSpeech1 == 409 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Thanks, Edward", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 410 then MomentSpeech1 = 413 end
			
			if MomentSpeech1 == 411 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Kitchen14,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Until the next time, Edward", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 412 then MomentSpeech1 = 413 end
			
			if MomentSpeech1 == 413 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 414 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("Wake up, Ed", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 415 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Luca ?", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 416 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("It's already 8'o clock", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 417 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room1,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 141, 250, 300) love.graphics.printf("We're going to be late", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 418 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("You're right", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 419 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("That was just a dream", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 420 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room2,width/2 + 128 , height, 0, top, 1, 0, height)
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("Let's go", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 421 and BadAction == 0 then MomentSpeech1 = 422 end 
			if MomentSpeech1 == 421 and BadAction >= 1 then MomentSpeech1 = 426 end
			
			if MomentSpeech1 == 422 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room4,width/2 + 128 , height, 0, top, 1, 0, height)

			end
			
			if MomentSpeech1 == 423 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Room5,width/2 + 128 , height, 0, top, 1, 0, height)

			end
			
			if MomentSpeech1 == 424 then MomentSpeech1 = 254 end

			
			if MomentSpeech1 == 426 then
			
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(0, 0, 0, 300) love.graphics.printf("At least i won't be alone anymore", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
				love.audio.stop(ClairDeLune)
			
			end
			
			if MomentSpeech1 == 427 then
			love.audio.stop(Main_Sound)
			love.audio.stop(ClairDeLune)
			love.audio.play(BreakingGlass)
			love.audio.pause(BreakingGlass)
			love.audio.pause(BreakingGlass)
			love.audio.play(BreakingGlass)
			end	
			
			if MomentSpeech1 == 429 then
			
				love.graphics.setColor(255,255,255,400) love.graphics.draw(Jornal,width/2 + 128 , height, 0, top, 1, 0, height)
				love.audio.stop(Main_Sound)
			end
			
			if MomentSpeech1 == 430 then
			
				love.graphics.setColor(255,255,255,400)  love.graphics.draw(textbox,width/2, height + 500 , bottom, 1, 1, width/2, 0)
				love.graphics.setColor(73, 4, 108, 300) love.graphics.printf("Hehe", width - width * 0.96,height + 550 + height/2  * 0.01, 600 , left)
				love.audio.stop(Main_Sound)
				
			end
			
			if MomentSpeech1 == 431 then
			
			MomentSpeech1 = 254
			
			end
			
			

end		
end
	


function love.keypressed(key)

	
	if key == "z" then
		MomentSpeech1 = MomentSpeech1 + 1
		print(MomentSpeech1)
		print(BadAction)
		print(GoodAction)

	end
	

	
	
	if key == "up"  then
	
		MomentAction = MomentAction - 0.01
		if MomentAction <= 0 then MomentAction = 0
		print (MomentAction)
		print(FinalMoment)
		
	end
	end
	
	
	
	if key == "down" then
		MomentAction = MomentAction + 0.01
		print (MomentAction)
		
	
	end
	
	
	if key == "escape" then
		love.event.quit()
		

		
end
end
end
