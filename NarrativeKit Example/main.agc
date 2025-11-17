
// Project: NarrativeKit Demo 
// Created: 25-11-09

#option_explicit

SetErrorMode(2)
SetScissor(0, 0, 0, 0)
SetSyncRate(30, 0) 
SetVirtualResolution(1024, 768)
SetWindowAllowResize(1)
SetWindowSize(1024, 768, 0)
SetWindowTitle("NarrativeKit Example")
UseNewDefaultFonts(1)

#insert "../NarrativeKit/NarrativeKit.agc"

local characterAelricImage as integer : characterAelricImage = LoadImage("images/character-aelric-transparent.png")
local characterCaptainReyesImage as integer : characterCaptainReyesImage = LoadImage("images/character-captain-reyes.jpg")
local characterEliImage as integer : characterEliImage = LoadImage("images/character-eli-transparent.png")
local characterEnsignVossImage as integer : characterEnsignVossImage = LoadImage("images/character-ensign-voss.jpg")
local characterHarperImage as integer : characterHarperImage = LoadImage("images/character-harper-transparent.png")
local characterLiraImage as integer : characterLiraImage = LoadImage("images/character-lira-transparent.png")
local characterMorgImage as integer : characterMorgImage = LoadImage("images/character-morg-transparent.png")
local characterZ3nImage as integer : characterZ3nImage = LoadImage("images/character-z3n.jpg")

local buttonFantasyImage as integer : buttonFantasyImage = LoadImage("images/button-fantasy.png")
local buttonFantasySelectedImage as integer : buttonFantasySelectedImage = LoadImage("images/button-fantasy-selected.png")
local buttonFantasySprite as integer : buttonFantasySprite = CreateSprite(buttonFantasySelectedImage)
local buttonPostApocalypticImage as integer : buttonPostApocalypticImage = LoadImage("images/button-post-apocalyptic.png")
local buttonPostApocalypticSelectedImage as integer : buttonPostApocalypticSelectedImage = LoadImage("images/button-post-apocalyptic-selected.png")
local buttonPostApocalypticSprite as integer : buttonPostApocalypticSprite = CreateSprite(buttonPostApocalypticImage)
local buttonScienceFictionImage as integer : buttonScienceFictionImage = LoadImage("images/button-science-fiction.png")
local buttonScienceFictionSelectedImage as integer : buttonScienceFictionSelectedImage = LoadImage("images/button-science-fiction-selected.png")
local buttonScienceFictionSprite as integer : buttonScienceFictionSprite = CreateSprite(buttonScienceFictionImage)

local sceneFantasyImage as integer : sceneFantasyImage = LoadImage("images/scene-fantasy.jpg")
local scenePostApocalypticImage as integer : scenePostApocalypticImage = LoadImage("images/scene-post-apocalyptic.jpg")
local sceneScienceFictionImage as integer : sceneScienceFictionImage = LoadImage("images/scene-science-fiction.jpg")
local sceneBackgroundSprite as integer : sceneBackgroundSprite = CreateSprite(sceneFantasyImage)

local selectedTheme as string : selectedTheme = "Fantasy"

SetSpriteSize(sceneBackgroundSprite, 1024, 768)
SetSpriteDepth(sceneBackgroundSprite, 100)

SetSpriteSize(buttonFantasySprite, -1, 40)
SetSpriteDepth(buttonFantasySprite, 50)

SetSpriteSize(buttonPostApocalypticSprite, -1, 40)
SetSpriteDepth(buttonPostApocalypticSprite, 50)

SetSpriteSize(buttonScienceFictionSprite, -1, 40)
SetSpriteDepth(buttonScienceFictionSprite, 50)

local totalButtonsWidth as float : totalButtonsWidth = GetSpriteWidth(buttonFantasySprite) + GetSpriteWidth(buttonPostApocalypticSprite) + GetSpriteWidth(buttonScienceFictionSprite) + 40

SetSpritePosition(buttonFantasySprite, (1024 - totalButtonsWidth) / 2, 40)
SetSpritePosition(buttonScienceFictionSprite, ((1024 - totalButtonsWidth) / 2) + GetSpriteWidth(buttonFantasySprite) + 20, 40)
SetSpritePosition(buttonPostApocalypticSprite, ((1024 - totalButtonsWidth) / 2) + GetSpriteWidth(buttonFantasySprite) + 20 + GetSpriteWidth(buttonScienceFictionSprite) + 20, 40)

global fantasyDialog as integer
fantasyDialog = InitiateNKitDialogFromJSON("json/dialog-config-fantasy.json")

global postApocalypticDialog as integer
postApocalypticDialog = InitiateNKitDialogFromJSON("json/dialog-config-post-apocalyptic.json")

global scienceFictionDialog as integer
scienceFictionDialog = InitiateNKitDialogFromJSON("json/dialog-config-science-fiction.json")

ClearNKitDialogQueue(fantasyDialog)

AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "The runes are glowing again. That can’t be good.")
AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "You said that last time, and we just triggered a light trap.")
AddToNKitDialogQueue(fantasyDialog, characterMorgImage, "Morg", "Bah! Traps or not, the gem’s worth more than my cart of ale!")
AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "If we don’t break the seal correctly, it’ll vaporize us and your ale.")
AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "Alright, you two. Aelric handles the runes, Morg watches our backs.")
AddToNKitDialogQueue(fantasyDialog, characterMorgImage, "Morg", "Fine. But if anything jumps out, I’m throwing you at it first, wizard!")
AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "Noted. Now... everyone stay quiet, I’m starting the incantation.")
AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "I swear, if this crystal whispers to me again, I’m done with magic quests.")

StartNKitDialogQueue(fantasyDialog)

do
	if (GetPointerPressed() = 1)
		local spriteHit as integer
		spriteHit = GetSpriteHit(GetPointerX(), GetPointerY())
		
	else
		if (GetPointerState() = 1)
		
		endif
		if (GetPointerReleased() = 1)
			if (spriteHit = buttonFantasySprite)
				selectedTheme = "Fantasy"
				
				SetSpriteImage(buttonFantasySprite, buttonFantasySelectedImage)
				SetSpriteImage(buttonPostApocalypticSprite, buttonPostApocalypticImage)
				SetSpriteImage(buttonScienceFictionSprite, buttonScienceFictionImage)
				SetSpriteImage(sceneBackgroundSprite, sceneFantasyImage)
				
				CloseNKitDialog(postApocalypticDialog)
				CloseNKitDialog(scienceFictionDialog)
				
				ClearNKitDialogQueue(fantasyDialog)
				
				AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "The runes are glowing again. That can’t be good.")
				AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "You said that last time, and we just triggered a light trap.")
				AddToNKitDialogQueue(fantasyDialog, characterMorgImage, "Morg", "Bah! Traps or not, the gem’s worth more than my cart of ale!")
				AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "If we don’t break the seal correctly, it’ll vaporize us and your ale.")
				AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "Alright, you two. Aelric handles the runes, Morg watches our backs.")
				AddToNKitDialogQueue(fantasyDialog, characterMorgImage, "Morg", "Fine. But if anything jumps out, I’m throwing you at it first, wizard!")
				AddToNKitDialogQueue(fantasyDialog, characterAelricImage, "Aelric", "Noted. Now... everyone stay quiet, I’m starting the incantation.")
				AddToNKitDialogQueue(fantasyDialog, characterLiraImage, "Lira", "I swear, if this crystal whispers to me again, I’m done with magic quests.")
				
				StartNKitDialogQueue(fantasyDialog)
			
			elseif (spriteHit = buttonPostApocalypticSprite)
				selectedTheme = "Post Apocalyptic"
				
				SetSpriteImage(buttonFantasySprite, buttonFantasyImage)
				SetSpriteImage(buttonPostApocalypticSprite, buttonPostApocalypticSelectedImage)
				SetSpriteImage(buttonScienceFictionSprite, buttonScienceFictionImage)
				SetSpriteImage(sceneBackgroundSprite, scenePostApocalypticImage)
				
				CloseNKitDialog(fantasyDialog)
				CloseNKitDialog(scienceFictionDialog)
				
				ClearNKitDialogQueue(postApocalypticDialog)
				
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "I used to cut through this street every morning on my way to work. There was" + chr(10) + "a café just over there that did the world’s most average latte, but I still" + chr(10) + "bought one every day like it was some kind of ritual. Funny how you don’t" + chr(10) + "realise something matters until the place is boarded up and half the roof’s" + chr(10) +"gone.")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Average latte or not, I’d kill for one right now. Or just... the smell of one." + chr(10) + "Anything that doesn’t reek of smoke and mould. Keep your mask tight — the" + chr(10) + "wind’s kicking the dust around again. Last thing we need is another coughing" + chr(10) + "fit giving us away.")
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "Right. Quiet. Careful. Alert. I know the drill. It’s just... eerie, isn’t it? All" + chr(10) + "these buildings still here, but the whole city feels like it’s holding its" + chr(10) + "breath. Like London itself is waiting to see what happens to us next.")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Yeah. The silence gets to me more than the infected do. At least you know" + chr(10) +"where you stand with them. But a street like this? Empty, but it feels watched." + chr(10) + "Kind of makes you miss the crowds, even the annoying ones who stop dead in" + chr(10) + "the middle of the pavement to check their phones.")
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "Careful, you’re starting to sound nostalgic. Next thing I know you’ll be" + chr(10) + "telling me you miss tourists asking for directions to Piccadilly Circus." + chr(10) + "Look at this... someone tried to block off the alley with bins and furniture." + chr(10) + "Didn’t work, judging by the claw marks")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Those aren’t fresh. Probably a few days old. Whoever set up the barricade" + chr(10) + "either ran or got lucky. Let’s hope it’s the first one. We’ll swing wide around" + chr(10) + "it — no point testing whether anything’s still trapped behind there.")
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "You ever think about how bizarre our lives have become? Two years ago my" + chr(10) + "biggest problem was my landlord raising rent. Now my biggest problem is" + chr(10) + "whether that shadow behind that broken fence is just a tarp flapping… or" + chr(10) + "something that wants to eat me.")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Honestly? I try not to think too hard about it. That’s how people snap. One" + chr(10) + "foot in front of the other, that’s my rule. Survive the day, worry about the" + chr(10) + "philosophy later. Although... if we make it out of this, I’m writing a very" + chr(10) + "strongly worded letter to whatever cosmic entity thought this was a good" + chr(10) + "idea.")
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "Well, make sure you cc me on that letter. I’ve got a few opinions of my own." + chr(10) + "Alright — chemist’s shop is up ahead. The shutters are still down, which" + chr(10) + "means either it’s untouched or someone’s holed up inside. Either way, let’s" + chr(10) + "not take all day.”")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Agreed. We go in quiet, take what we need, and head straight back to the" + chr(10) + "safehouse. No stupid detours this time, okay? Last thing we need is another" + chr(10) + "sprint through the streets because you decided to ‘just check the back room.’")
				AddToNKitDialogQueue(postApocalypticDialog, characterHarperImage, "Harper", "That was one time. And technically it worked out. We survived, didn’t we?")
				AddToNKitDialogQueue(postApocalypticDialog, characterEliImage, "Eli", "Barely. Let’s try for something a bit less life-threatening this time.")
				
				StartNKitDialogQueue(postApocalypticDialog)
				
			elseif (spriteHit = buttonScienceFictionSprite)
				selectedTheme = "Science Fiction"
				
				SetSpriteImage(buttonFantasySprite, buttonFantasyImage)
				SetSpriteImage(buttonPostApocalypticSprite, buttonPostApocalypticImage)
				SetSpriteImage(buttonScienceFictionSprite, buttonScienceFictionSelectedImage)
				SetSpriteImage(sceneBackgroundSprite, sceneScienceFictionImage)
				
				CloseNKitDialog(fantasyDialog)
				CloseNKitDialog(postApocalypticDialog)
				
				ClearNKitDialogQueue(scienceFictionDialog)
				
				AddToNKitDialogQueue(scienceFictionDialog, characterCaptainReyesImage, "Captain Reyes", "Status report, Voss. Why are we drifting toward the asteroid belt?")
				AddToNKitDialogQueue(scienceFictionDialog, characterEnsignVossImage, "Ensign Voss", "Uh, minor navigation hiccup! Definitely under control. Probably.")
				AddToNKitDialogQueue(scienceFictionDialog, characterZ3nImage, "Z3N (Ship AI)", "Correction: impact trajectory confirmed in 47 seconds.")
				AddToNKitDialogQueue(scienceFictionDialog, characterCaptainReyesImage, "Captain Reyes", "Voss, I swear on my commission, if we lose another hull plate...")
				AddToNKitDialogQueue(scienceFictionDialog, characterEnsignVossImage, "Ensign Voss", "Don’t worry, I can fix this! Just... need to remember which lever does what.")
				AddToNKitDialogQueue(scienceFictionDialog, characterZ3nImage, "Z3N (Ship AI)", "Suggestion: The blue lever stabilizes thrusters. The red lever vents oxygen.")
				AddToNKitDialogQueue(scienceFictionDialog, characterEnsignVossImage, "Ensign Voss", "Good to know! Wait — which one did I just pull?")
				AddToNKitDialogQueue(scienceFictionDialog, characterCaptainReyesImage, "Captain Reyes", "Z3N, engage autopilot. And mute Voss before I eject myself.")
				AddToNKitDialogQueue(scienceFictionDialog, characterZ3nImage, "Z3N (Ship AI)", "Understood, Captain. Muting Voss for crew morale.")
				
				StartNKitDialogQueue(scienceFictionDialog)
				
			endif
		endif
	endif
	
	print(ScreenFPS())
	UpdateNKitDialog()
	Sync()
loop