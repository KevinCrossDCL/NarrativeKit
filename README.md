# NarrativeKit
*A lightweight dialog system for AppGameKit Classic & Studio.*

NarrativeKit is a customizable dialog framework designed to make it easy to add visual-novel style narrative boxes, character portraits, and animated text to your AppGameKit games or projects.

It supports:

- Message queues  
- Letter-by-letter or word-by-word reveal  
- Avatar portraits  
- Resizable / auto-height dialog boxes  
- Custom borders and backgrounds  
- Next / Back / Close buttons  
- JSON-driven configuration  
- Optional UI sounds  
- Tap-to-skip reveal animation  
- Top- or bottom-anchored dialog windows  

NarrativeKit handles layout, transitions, and reveal animations automatically—simply feed it a queue of dialog messages.

---

## **Features**

### Customisable  
Every visual element (background, borders, buttons, avatar) is sprite-based and configured via JSON.

### Dialog Queue System  
Push multiple dialog entries, each with:
- Avatar image  
- Character name  
- Dialog text  

NarrativeKit manages the sequence and navigation automatically.

### Text Reveal Animations  
Three reveal modes:
- `Instant`  
- `Letter`  
- `Word`

Plus optional tap-to-skip reveal.

### Sound Support  
Audio options include:
- Play once on start  
- Play per letter/word  reveal 
- Continuous loop  
- Disabled / No sound 

### Responsive Layout  
Supports:
- Auto-height resizing based on text  
- Anchor to top or bottom of screen
- Multiple alignment options  
- Offsets for fine-tuning layout  

### JSON-Driven Setup  
NarrativeKit loads everything from a JSON config.

---

## Installation

1. Copy `NarrativeKit.agc` into your project or keep it in a seperate project folder.  
2. Add your JSON configuration (e.g., `dialog-config.json`).  
3. Insert the library at the top of your script and change the path:
```
#insert "NarrativeKit.agc"
```
or
```
#insert "../NarrativeKit/NarrativeKit.agc"
```
Ensure all file paths in your JSON config are correct.

You're ready to build dialogs.

---

## Basic Usage
1. Initialise the Dialog System
```
global dialog as integer
dialog = InitiateNKitDialogFromJSON("json/dialog-config.json")
```
2. Add Messages to the Queue
```
AddToNKitDialogQueue(dialog, avatarImage, "Character Name", "Your dialog text here")
```
3. Start the Dialog
```
StartNKitDialogQueue(dialog)
```
4. Update Each Frame
```
UpdateNKitDialog()
```
UpdateNKitDialog() must run every frame inside your main loop.

---

## Full Example
```
#insert "../NarrativeKit/NarrativeKit.agc"

local aelricImage as integer : aelricImage = LoadImage("images/aelric.png")
local liraImage as integer : liraImage = LoadImage("images/lira.png")
local morgImage as integer : morgImage = LoadImage("images/morg.png")

global dialog as integer
dialog = InitiateNKitDialogFromJSON("json/dialog-config.json")

do
	if (GetRawKeyPressed(32) = 1)
		ClearNKitDialogQueue(dialog)
		AddToNKitDialogQueue(dialog, aelricImage, "Aelric", "The runes are glowing again. That can’t be good.")
		AddToNKitDialogQueue(dialog, liraImage, "Lira", "You said that last time, and we just triggered a light trap.")
		AddToNKitDialogQueue(dialog, morgImage, "Morg", "Bah! Traps or not, the gem’s worth more than my cart of ale!")
		AddToNKitDialogQueue(dialog, aelricImage, "Aelric", "If we don’t break the seal correctly, it’ll vaporize us and your ale.")
		AddToNKitDialogQueue(dialog, liraImage, "Lira", "Alright, you two. Aelric handles the runes, Morg watches our backs.")
		AddToNKitDialogQueue(dialog, morgImage, "Morg", "Fine. But if anything jumps out, I’m throwing you at it first, wizard!")
		AddToNKitDialogQueue(dialog, aelricImage, "Aelric", "Noted. Now... everyone stay quiet, I’m starting the incantation.")
		AddToNKitDialogQueue(dialog, liraImage, "Lira", "I swear, if this crystal whispers to me again, I’m done with magic quests.")
				
		StartNKitDialogQueue(dialog)
	endif
	
	UpdateNKitDialog()
	Sync()
loop
```
There's also an example project in the Examples folder.

---

## JSON Example
```json
{
	"backgroundImagePath": "images/dialog-background.jpg",
	"backgroundImageWrapUV": [1, 1],
	"borderTopLeftImagePath": "images/dialog-border-top-left.png",
	"borderTopImagePath": "images/dialog-border-top.png",
	"borderTopImageWrapUV": [1, 0],
	"borderTopSpriteUVScale": [0.5, 1],
	"borderTopRightImagePath": "images/dialog-border-top-right.png",
	"borderLeftImagePath": "images/dialog-border-left.png",
	"borderLeftImageWrapUV": [0, 1],
	"borderRightImagePath": "images/dialog-border-right.png",
	"borderRightImageWrapUV": [0, 1],
	"borderBottomLeftImagePath": "images/dialog-border-bottom-left.png",
	"borderBottomImagePath": "images/dialog-border-bottom.png",
	"borderBottomImageWrapUV": [1, 0],
	"borderBottomSpriteUVScale": [0.5, 1],
	"borderBottomRightImagePath": "images/dialog-border-bottom-right.png",
	"anchorTo": "bottom",
	"autoHeight": 1,
	"avatarAnchorTo": "Bottom Left",
	"avatarSize": [111, 150],
	"avatarOffset": [20, -23],
	"borderThickness": 25,
	"messageTextAlignment": 0,
	"messageTextBold": 0,
	"messageTextColor": [220, 195, 120, 255],
	"messageTextFontPath": "fonts/SpecialElite.ttf",
	"messageTextOffset": [145, 60],
	"messageTextSize": 25,
	"nameTextAlignment": 0,
	"nameTextBold": 0,
	"nameTextColor": [255, 255, 255, 255],
	"nameTextFontPath": "fonts/SpecialElite.ttf",
	"nameTextOffset": [145, 20],
	"nameTextSize": 35,
	"nextButtonAnchorTo": "Bottom Right",
	"nextButtonImagePath": "images/button-next.png",
	"nextButtonOffset": [-40, 10],
	"nextButtonSize": [60, 45],
	"offset": [0, -20],
	"size": [950, 100],
	"textDisplayMode": "Letter"
}
```
