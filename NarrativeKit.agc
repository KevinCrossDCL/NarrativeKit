// File: NarrativeKit.agc
// Created: 25-11-09

type narrativeKitDialogQueueType
	avatarImage as integer
	index as integer
	name as string
	revealComplete as integer
	revealCounter as integer
	textOriginal as string
	textWrapped as string
	timerLastRevealed as integer
endtype

type narrativeKitDialogType
	allowBackButton as integer // Optional. Default: 0. Options: 0 = False, 1 = True. Info: If enabled the back button will allow the user to go back to the previous dialog message in the queue.
	allowCloseButton as integer // Optional. Default: 0. Options: 0 = False, 1 = True. Info: If enabled the close button will close the dialog and all other dialogs in the queue, skipping them all completely.
	allowTapToSkipTextAnimation as integer // Optional. Default: 0. Options: 0 = False, 1 = True.
	anchorTo as string // Optional. Default: "Bottom". Options: "Top", "Bottom".
	autoHeight as integer // Optional. Default: 0. Options: 0 = False, 1 = True.
	avatarAnchorTo as string // Optional. Default: "Top Left". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left". 
	avatarOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from avatarAnchorTo option.
	avatarSize as float[1] // Required (at the moment).
	avatarSprite as integer // Ignored if in JSON.
	backButtonAnchorTo as string // Optional. Default: "Bottom Left". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left".
	backButtonImage as integer // Ignored if in JSON.
	backButtonImagePath as string // Required if allowBackButton = 1.
	backButtonOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from backButtonAnchorTo option.
	backButtonSize as float[1] // Required if allowBackButton = 1.
	backButtonSprite as integer // Ignored if in JSON.
	backgroundImage as integer // Ignored if in JSON.
	backgroundImagePath as string // Required.
	backgroundImageWrapUV as integer[1] // Optional. Default [0, 0].
	backgroundSprite as integer // Ignored if in JSON.
	backgroundSpriteUVScale as float[1] // Optional. Default [1, 1].
	borderBottomImage as integer // Ignored if in JSON.
	borderBottomImagePath as string // Required.
	borderBottomImageWrapUV as integer[1] // Optional. Default [0, 0].
	borderBottomLeftImage as integer // Ignored if in JSON.
	borderBottomLeftImagePath as string // Required.
	borderBottomLeftSprite as integer // Ignored if in JSON.
	borderBottomRightImage as integer // Ignored if in JSON.
	borderBottomRightImagePath as string // Required.
	borderBottomRightSprite as integer // Ignored if in JSON.
	borderBottomSprite as integer // Ignored if in JSON.
	borderBottomSpriteUVScale as float[1] // Optional. Default [1, 1].
	borderLeftImage as integer // Ignored if in JSON.
	borderLeftImagePath as string // Required.
	borderLeftImageWrapUV as integer[1] // Optional. Default [0, 0].
	borderLeftSprite as integer // Ignored if in JSON.
	borderLeftSpriteUVScale as float[1] // Optional. Default [1, 1].
	borderRightImage as integer // Ignored if in JSON.
	borderRightImagePath as string // Required.
	borderRightImageWrapUV as integer[1] // Optional. Default [0, 0].
	borderRightSprite as integer // Ignored if in JSON.
	borderRightSpriteUVScale as float[1] // Optional. Default [1, 1].
	borderThickness as float // Default: 25.
	borderTopImage as integer // Ignored if in JSON.
	borderTopImagePath as string // Required.
	borderTopImageWrapUV as integer[1] // Optional. Default [0, 0].
	borderTopLeftImage as integer // Ignored if in JSON.
	borderTopLeftImagePath as string // Required.
	borderTopLeftSprite as integer // Ignored if in JSON.
	borderTopRightImage as integer // Ignored if in JSON.
	borderTopRightImagePath as string // Required.
	borderTopRightSprite as integer // Ignored if in JSON.
	borderTopSprite as integer // Ignored if in JSON.
	borderTopSpriteUVScale as float[1] // Optional. Default [1, 1].
	closeButtonAnchorTo as string // Optional. Default: "Top Right". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left".
	closeButtonImage as integer // Ignored if in JSON.
	closeButtonImagePath as string // Required if allowCloseButton = 1.
	closeButtonOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from closeButtonAnchorTo option.
	closeButtonSize as float[1] // Required if allowCloseButton = 1.
	closeButtonSprite as integer // Ignored if in JSON.
	depth as integer // Optional. Info: The depth/layer to place the dialog on. Can not be lower than 3.
	id as integer // Ignored if in JSON.
	isVisible as integer // Ignored if in JSON.
	messageText as integer // Ignored if in JSON.
	messageTextAlignment as integer // Optional. Default: 0. Options: 0 = Left, 1 = Centre, 2 = Right.
	messageTextAnchorTo as string // Optional. Default: "Top Left". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left". 
	messageTextBold as integer // Optional. Default: 0.
	messageTextColor as integer[3] // Optional. Default: [0, 0, 0, 255]. Accepts RGB and RGBA.
	messageTextFont as integer // Ignored if in JSON
	messageTextFontPath as string // Optional. Default: Will use built in AGK Font.
	messageTextOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from messageTextAnchorTo option.
	messageTextRevealDelay as integer // Optional. Defaults: 0 milliseconds if textDisplayMode = "" or "Instant", 40 milliseconds if textDisplayMode = "Letter", 250 milliseconds if textDisplayMode = "Word"
	messageTextSize as float // Optional. Default: 20.
	messageTextWrapWidth as float // Optional. Default: 0. Options: 0 = No Wrap. 1+ = Wrap Width.
	nameText as integer // Ignored if in JSON.
	nameTextAlignment as integer // Optional. Default: 0. Options: 0 = Left, 1 = Centre, 2 = Right.
	nameTextAnchorTo as string // Optional. Default: "Top Left". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left".
	nameTextBold as integer // Optional. Default: 0.
	nameTextColor as integer[3] // Optional. Default: [0, 0, 0, 255]. Accepts RGB and RGBA.
	nameTextFont as integer // Ignored if in JSON.
	nameTextFontPath as string // Optional. Default: Will use built in AGK Font.
	nameTextOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from nameTextAnchorTo option.
	nameTextSize as float // Optional. Default: 25.
	nextButtonAnchorTo as string // Optional. Default: "Bottom Right". Options: "TopLeft", "TopCentre", "TopRight", "CentreLeft", "Centre", "CentreRight", "BottomLeft", "Bottom", "BottomRight". Also accepts Initials i.e. "TL" and long names with spaces i.e. "Top Left".
	nextButtonImage as integer // Ignored if in JSON.
	nextButtonImagePath as string // Required.
	nextButtonOffset as float[1] // Optional. Default: [0, 0]. Info: Offset from nextButtonAnchorTo option.
	nextButtonSize as float[1] // Required.
	nextButtonSprite as integer // Ignored if in JSON.
	offset as float[1] // Optional. Default: [0, 0]. Info: Offset from top or bottom of screen depending on anchorTo
	position as float[1] // Ignored if in JSON.
	queue as narrativeKitDialogQueueType[] // Ignored if in JSON.
	queueIndex as integer // Ignored if in JSON.
	queueName as string // Ignored if in JSON.
	size as float[1] // Required. Info: Default/minimum Size. Can change if messageText is long and autoHeight = 1.
	sound as integer // Ignored if in JSON.
	soundFilePath as string // Required if soundPlayMode <> "None". Info: Accepts .wav and .ogg files.
	soundPlayMode as string // Optional. Default: "None". Options: "None" = no sound, "Start" = play once at dialog start, "Reveal" = play on each letter/word reveal, "Loop" = loop as background sound while dialog visible.
	soundVolume as float // Optional. Default 25
	textDisplayMode as string // Optional. Default: "Instant". Options: "Letter", "Word", "Instant".
endtype

global narrativeKitDialogActiveID as integer : narrativeKitDialogActiveID = 0
global narrativeKitDialogs as narrativeKitDialogType[0]
global narrativeKitSpriteHit as integer
global narrativeKitSpriteReleased as integer

function AddToNKitDialogQueue(narrativeKitDialogID as integer, avatarImage as integer, name as string, text as string)
	local queueIndex as integer
	
	narrativeKitDialogs[narrativeKitDialogID].queue.length = narrativeKitDialogs[narrativeKitDialogID].queue.length + 1
	queueIndex = narrativeKitDialogs[narrativeKitDialogID].queue.length
	
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].avatarImage = avatarImage
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].index = queueIndex
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].name = name
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textOriginal = text
endfunction

function ClearNKitDialogQueue(narrativeKitDialogID as integer)
	narrativeKitDialogs[narrativeKitDialogID].queue.length = -1
	narrativeKitDialogs[narrativeKitDialogID].queueIndex = -1
endfunction

function CloseNKitDialog(narrativeKitDialogID as integer)
	narrativeKitDialogActiveID = -1
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderRightSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomRightSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, -9999, -9999)
	SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, -9999, -9999)
	SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, -9999, -9999)
	if (narrativeKitDialogs[narrativeKitDialogID].allowBackButton = 1) then SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, -9999, -9999)
	if (narrativeKitDialogs[narrativeKitDialogID].allowCloseButton = 1) then SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, -9999, -9999)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, -9999, -9999)
	if (GetSoundExists(narrativeKitDialogs[narrativeKitDialogID].sound) = 1)
		if (GetSoundsPlaying(narrativeKitDialogs[narrativeKitDialogID].sound) = 1) then StopSound(narrativeKitDialogs[narrativeKitDialogID].sound)
	endif
	narrativeKitDialogs[narrativeKitDialogID].isVisible = 0
endfunction

function GetCurrentNKitDialogQueueIndex(narrativeKitDialogID as integer)
	local queueIndex as integer : queueIndex = narrativeKitDialogs[narrativeKitDialogID].queueIndex
	
endfunction queueIndex

function GetNKitDialogQueueLength(narrativeKitDialogID as integer)
	local queueLength as integer : queueLength = narrativeKitDialogs[narrativeKitDialogID].queue.length
	
endfunction queueLength

function GetNKitDialogQueueName(narrativeKitDialogID as integer)
	local queueName as string : queueName = narrativeKitDialogs[narrativeKitDialogID].queueName
	
endfunction queueName

function GetNKitDialogVisible(narrativeKitDialogID as integer)
	local isVisible as integer : isVisible = narrativeKitDialogs[narrativeKitDialogID].isVisible
	
endfunction isVisible

function InitiateNKitDialogFromJSON(jsonPath as string)
	local narrativeKitDialog as narrativeKitDialogType
	local narrativeKitDialogID as integer
	local openJSON as integer : openJSON = OpenToRead(jsonPath)
	local readJSON as string : readJSON = ReadString(openJSON)
	
	narrativeKitDialogs.length = narrativeKitDialogs.length + 1
	narrativeKitDialogID = narrativeKitDialogs.length - 1
	
	narrativeKitDialog.fromJSON(readJSON)
	
	narrativeKitDialogs[narrativeKitDialogID].backgroundImage = LoadImage(narrativeKitDialog.backgroundImagePath)
	narrativeKitDialogs[narrativeKitDialogID].backgroundImagePath = narrativeKitDialog.backgroundImagePath
	narrativeKitDialogs[narrativeKitDialogID].backgroundImageWrapUV = narrativeKitDialog.backgroundImageWrapUV
	SetImageWrapU(narrativeKitDialogs[narrativeKitDialogID].backgroundImage, narrativeKitDialogs[narrativeKitDialogID].backgroundImageWrapUV[0])
	SetImageWrapV(narrativeKitDialogs[narrativeKitDialogID].backgroundImage, narrativeKitDialogs[narrativeKitDialogID].backgroundImageWrapUV[1])
	narrativeKitDialogs[narrativeKitDialogID].backgroundSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].backgroundImage)
	if (narrativeKitDialog.backgroundSpriteUVScale.length > -1)
		narrativeKitDialogs[narrativeKitDialogID].backgroundSpriteUVScale = narrativeKitDialog.backgroundSpriteUVScale
		SetSpriteUVScale(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, narrativeKitDialogs[narrativeKitDialogID].backgroundSpriteUVScale[0], narrativeKitDialogs[narrativeKitDialogID].backgroundSpriteUVScale[1])
	endif
	if (narrativeKitDialog.depth >= 3) then SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, narrativeKitDialog.depth)
	narrativeKitDialogs[narrativeKitDialogID].depth = narrativeKitDialog.depth
	
	narrativeKitDialogs[narrativeKitDialogID].borderTopLeftImage = LoadImage(narrativeKitDialog.borderTopLeftImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderTopLeftImagePath = narrativeKitDialog.borderTopLeftImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftImage)
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderTopImage = LoadImage(narrativeKitDialog.borderTopImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderTopImagePath = narrativeKitDialog.borderTopImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderTopImageWrapUV = narrativeKitDialog.borderTopImageWrapUV
	SetImageWrapU(narrativeKitDialogs[narrativeKitDialogID].borderTopImage, narrativeKitDialogs[narrativeKitDialogID].borderTopImageWrapUV[0])
	SetImageWrapV(narrativeKitDialogs[narrativeKitDialogID].borderTopImage, narrativeKitDialogs[narrativeKitDialogID].borderTopImageWrapUV[1])
	narrativeKitDialogs[narrativeKitDialogID].borderTopSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderTopImage)
	if (narrativeKitDialog.borderTopSpriteUVScale.length > -1)
		narrativeKitDialogs[narrativeKitDialogID].borderTopSpriteUVScale = narrativeKitDialog.borderTopSpriteUVScale
		SetSpriteUVScale(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite, narrativeKitDialogs[narrativeKitDialogID].borderTopSpriteUVScale[0], narrativeKitDialogs[narrativeKitDialogID].borderTopSpriteUVScale[1])
	endif
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderTopRightImage = LoadImage(narrativeKitDialog.borderTopRightImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderTopRightImagePath = narrativeKitDialog.borderTopRightImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderTopRightImage)
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderLeftImage = LoadImage(narrativeKitDialog.borderLeftImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderLeftImagePath = narrativeKitDialog.borderLeftImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderLeftImageWrapUV = narrativeKitDialog.borderLeftImageWrapUV
	SetImageWrapU(narrativeKitDialogs[narrativeKitDialogID].borderLeftImage, narrativeKitDialogs[narrativeKitDialogID].borderLeftImageWrapUV[0])
	SetImageWrapV(narrativeKitDialogs[narrativeKitDialogID].borderLeftImage, narrativeKitDialogs[narrativeKitDialogID].borderLeftImageWrapUV[1])
	narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderLeftImage)
	if (narrativeKitDialog.borderLeftSpriteUVScale.length > -1)
		narrativeKitDialogs[narrativeKitDialogID].borderLeftSpriteUVScale = narrativeKitDialog.borderLeftSpriteUVScale
		SetSpriteUVScale(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite, narrativeKitDialogs[narrativeKitDialogID].borderLeftSpriteUVScale[0], narrativeKitDialogs[narrativeKitDialogID].borderLeftSpriteUVScale[1])
	endif
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderRightImage = LoadImage(narrativeKitDialog.borderRightImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderRightImagePath = narrativeKitDialog.borderRightImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderRightImageWrapUV = narrativeKitDialog.borderRightImageWrapUV
	SetImageWrapU(narrativeKitDialogs[narrativeKitDialogID].borderRightImage, narrativeKitDialogs[narrativeKitDialogID].borderRightImageWrapUV[0])
	SetImageWrapV(narrativeKitDialogs[narrativeKitDialogID].borderRightImage, narrativeKitDialogs[narrativeKitDialogID].borderRightImageWrapUV[1])
	narrativeKitDialogs[narrativeKitDialogID].borderRightSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderRightImage)
	if (narrativeKitDialog.borderRightSpriteUVScale.length > -1)
		narrativeKitDialogs[narrativeKitDialogID].borderRightSpriteUVScale = narrativeKitDialog.borderRightSpriteUVScale
		SetSpriteUVScale(narrativeKitDialogs[narrativeKitDialogID].borderRightSprite, narrativeKitDialogs[narrativeKitDialogID].borderRightSpriteUVScale[0], narrativeKitDialogs[narrativeKitDialogID].borderRightSpriteUVScale[1])
	endif
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderRightSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftImage = LoadImage(narrativeKitDialog.borderBottomLeftImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftImagePath = narrativeKitDialog.borderBottomLeftImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftImage)
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderBottomImage = LoadImage(narrativeKitDialog.borderBottomImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderBottomImagePath = narrativeKitDialog.borderBottomImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderBottomImageWrapUV = narrativeKitDialog.borderBottomImageWrapUV
	SetImageWrapU(narrativeKitDialogs[narrativeKitDialogID].borderBottomImage, narrativeKitDialogs[narrativeKitDialogID].borderBottomImageWrapUV[0])
	SetImageWrapV(narrativeKitDialogs[narrativeKitDialogID].borderBottomImage, narrativeKitDialogs[narrativeKitDialogID].borderBottomImageWrapUV[1])
	narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderBottomImage)
	if (narrativeKitDialog.borderBottomSpriteUVScale.length > -1)
		narrativeKitDialogs[narrativeKitDialogID].borderBottomSpriteUVScale = narrativeKitDialog.borderBottomSpriteUVScale
		SetSpriteUVScale(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite, narrativeKitDialogs[narrativeKitDialogID].borderBottomSpriteUVScale[0], narrativeKitDialogs[narrativeKitDialogID].borderBottomSpriteUVScale[1])
	endif
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].borderBottomRightImage = LoadImage(narrativeKitDialog.borderBottomRightImagePath)
	narrativeKitDialogs[narrativeKitDialogID].borderBottomRightImagePath = narrativeKitDialog.borderBottomRightImagePath
	narrativeKitDialogs[narrativeKitDialogID].borderBottomRightSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].borderBottomRightImage)
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].borderBottomRightSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 1)
	
	narrativeKitDialogs[narrativeKitDialogID].anchorTo = narrativeKitDialog.anchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].anchorTo = "") then narrativeKitDialogs[narrativeKitDialogID].anchorTo = "Bottom"
	narrativeKitDialogs[narrativeKitDialogID].autoHeight = narrativeKitDialog.autoHeight
	
	narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo = narrativeKitDialog.avatarAnchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo = "") then narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo = "Top Left"
	narrativeKitDialogs[narrativeKitDialogID].avatarOffset = narrativeKitDialog.avatarOffset
	narrativeKitDialogs[narrativeKitDialogID].avatarSprite = CreateSprite(0)
	narrativeKitDialogs[narrativeKitDialogID].avatarSize = narrativeKitDialog.avatarSize
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 2)
	
	narrativeKitDialogs[narrativeKitDialogID].borderThickness = narrativeKitDialog.borderThickness
	if (narrativeKitDialogs[narrativeKitDialogID].borderThickness = 0) then narrativeKitDialogs[narrativeKitDialogID].borderThickness = 20
	narrativeKitDialogs[narrativeKitDialogID].id = narrativeKitDialogID

	narrativeKitDialogs[narrativeKitDialogID].nameText = CreateText("")
	narrativeKitDialogs[narrativeKitDialogID].nameTextAlignment = narrativeKitDialog.nameTextAlignment
	narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo = narrativeKitDialog.nameTextAnchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo = "") then narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo = "Top Left"
	narrativeKitDialogs[narrativeKitDialogID].nameTextBold = narrativeKitDialog.nameTextBold
	if (narrativeKitDialog.nameTextColor.length < 3)
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor = [0, 0, 0, 255]
	elseif (narrativeKitDialog.nameTextColor.length = 3)
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor[0] = narrativeKitDialog.nameTextColor[0]
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor[1] = narrativeKitDialog.nameTextColor[1]
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor[2] = narrativeKitDialog.nameTextColor[2]
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor[3] = 255
	else
		narrativeKitDialogs[narrativeKitDialogID].nameTextColor = narrativeKitDialog.nameTextColor
	endif
	if (narrativeKitDialog.nameTextFontPath <> "") then narrativeKitDialogs[narrativeKitDialogID].nameTextFont = LoadFont(narrativeKitDialog.nameTextFontPath)
	narrativeKitDialogs[narrativeKitDialogID].nameTextFontPath = narrativeKitDialog.nameTextFontPath
	narrativeKitDialogs[narrativeKitDialogID].nameTextOffset = narrativeKitDialog.nameTextOffset
	narrativeKitDialogs[narrativeKitDialogID].nameTextSize = narrativeKitDialog.nameTextSize
	if (narrativeKitDialog.nameTextSize > 0)
		narrativeKitDialogs[narrativeKitDialogID].nameTextSize = narrativeKitDialog.nameTextSize
	else
		narrativeKitDialogs[narrativeKitDialogID].nameTextSize = 25
	endif
	SetTextDepth(narrativeKitDialogs[narrativeKitDialogID].nameText, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 2)
	
	narrativeKitDialogs[narrativeKitDialogID].messageText = CreateText("")
	narrativeKitDialogs[narrativeKitDialogID].messageTextAlignment = narrativeKitDialog.messageTextAlignment
	narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo = narrativeKitDialog.messageTextAnchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo = "") then narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo = "Top Left"
	narrativeKitDialogs[narrativeKitDialogID].messageTextBold = narrativeKitDialog.messageTextBold
	if (narrativeKitDialog.messageTextColor.length < 3)
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor = [0, 0, 0, 255]
	elseif (narrativeKitDialog.messageTextColor.length = 3)
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor[0] = narrativeKitDialog.messageTextColor[0]
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor[1] = narrativeKitDialog.messageTextColor[1]
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor[2] = narrativeKitDialog.messageTextColor[2]
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor[3] = 255
	else
		narrativeKitDialogs[narrativeKitDialogID].messageTextColor = narrativeKitDialog.messageTextColor
	endif
	if (narrativeKitDialog.messageTextRevealDelay > 0)
		narrativeKitDialogs[narrativeKitDialogID].messageTextRevealDelay = narrativeKitDialog.messageTextRevealDelay
	else
		if (narrativeKitDialog.textDisplayMode = "" or Lower(narrativeKitDialog.textDisplayMode) = "instant")
			narrativeKitDialogs[narrativeKitDialogID].messageTextRevealDelay = 0
		elseif (narrativeKitDialog.textDisplayMode = "" or Lower(narrativeKitDialog.textDisplayMode) = "letter")
			narrativeKitDialogs[narrativeKitDialogID].messageTextRevealDelay = 40
		elseif (Lower(narrativeKitDialog.textDisplayMode) = "word")
			narrativeKitDialogs[narrativeKitDialogID].messageTextRevealDelay = 250
		endif
	endif
	if (narrativeKitDialog.messageTextFontPath <> "") then narrativeKitDialogs[narrativeKitDialogID].messageTextFont = LoadFont(narrativeKitDialog.messageTextFontPath)
	narrativeKitDialogs[narrativeKitDialogID].messageTextFontPath = narrativeKitDialog.messageTextFontPath
	narrativeKitDialogs[narrativeKitDialogID].messageTextOffset = narrativeKitDialog.messageTextOffset
	if (narrativeKitDialog.messageTextSize > 0)
		narrativeKitDialogs[narrativeKitDialogID].messageTextSize = narrativeKitDialog.messageTextSize
	else
		narrativeKitDialogs[narrativeKitDialogID].messageTextSize = 20
	endif
	if (narrativeKitDialog.messageTextFontPath <> "") then SetTextFont(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].messageTextFont)
	narrativeKitDialogs[narrativeKitDialogID].messageTextWrapWidth = narrativeKitDialog.messageTextWrapWidth
	SetTextDepth(narrativeKitDialogs[narrativeKitDialogID].messageText, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 2)
	
	narrativeKitDialogs[narrativeKitDialogID].allowBackButton = narrativeKitDialog.allowBackButton
	narrativeKitDialogs[narrativeKitDialogID].allowCloseButton = narrativeKitDialog.allowCloseButton
	
	narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo = narrativeKitDialog.backButtonAnchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].allowBackButton = 1)
		narrativeKitDialogs[narrativeKitDialogID].backButtonImage = LoadImage(narrativeKitDialog.backButtonImagePath)
		narrativeKitDialogs[narrativeKitDialogID].backButtonSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].backButtonImage)
	endif
	narrativeKitDialogs[narrativeKitDialogID].backButtonImagePath = narrativeKitDialog.backButtonImagePath
	narrativeKitDialogs[narrativeKitDialogID].backButtonOffset = narrativeKitDialog.backButtonOffset
	narrativeKitDialogs[narrativeKitDialogID].backButtonSize = narrativeKitDialog.backButtonSize
	if (narrativeKitDialogs[narrativeKitDialogID].allowBackButton = 1)
		SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 3)
	endif
	
	narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo = narrativeKitDialog.closeButtonAnchorTo
	if (narrativeKitDialogs[narrativeKitDialogID].allowcloseButton = 1)
		narrativeKitDialogs[narrativeKitDialogID].closeButtonImage = LoadImage(narrativeKitDialog.closeButtonImagePath)
		narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].closeButtonImage)
	endif
	narrativeKitDialogs[narrativeKitDialogID].closeButtonImagePath = narrativeKitDialog.closeButtonImagePath
	narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset = narrativeKitDialog.closeButtonOffset
	narrativeKitDialogs[narrativeKitDialogID].closeButtonSize = narrativeKitDialog.closeButtonSize
	if (narrativeKitDialogs[narrativeKitDialogID].allowcloseButton = 1)
		SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 3)
	endif
	
	narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo = narrativeKitDialog.nextButtonAnchorTo
	narrativeKitDialogs[narrativeKitDialogID].nextButtonImage = LoadImage(narrativeKitDialog.nextButtonImagePath)
	narrativeKitDialogs[narrativeKitDialogID].nextButtonImagePath = narrativeKitDialog.nextButtonImagePath
	narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset = narrativeKitDialog.nextButtonOffset
	narrativeKitDialogs[narrativeKitDialogID].nextButtonSize = narrativeKitDialog.nextButtonSize
	narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite = CreateSprite(narrativeKitDialogs[narrativeKitDialogID].nextButtonImage)
	SetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, GetSpriteDepth(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite) - 3)
	
	narrativeKitDialogs[narrativeKitDialogID].offset = narrativeKitDialog.offset
	narrativeKitDialogs[narrativeKitDialogID].size = narrativeKitDialog.size
	
	if (narrativeKitDialog.soundFilePath <> "")
		narrativeKitDialogs[narrativeKitDialogID].sound = LoadSound(narrativeKitDialog.soundFilePath)
		narrativeKitDialogs[narrativeKitDialogID].soundFilePath = narrativeKitDialog.soundFilePath
	endif
	if (narrativeKitDialog.soundPlayMode = "")
		narrativeKitDialogs[narrativeKitDialogID].soundPlayMode = "None"
	else
		narrativeKitDialogs[narrativeKitDialogID].soundPlayMode = narrativeKitDialog.soundPlayMode
	endif
	if (narrativeKitDialog.soundVolume > 0)
		narrativeKitDialogs[narrativeKitDialogID].soundVolume = narrativeKitDialog.soundVolume
	else
		narrativeKitDialogs[narrativeKitDialogID].soundVolume = 25
	endif
	
	narrativeKitDialogs[narrativeKitDialogID].allowTapToSkipTextAnimation = narrativeKitDialog.allowTapToSkipTextAnimation
	narrativeKitDialogs[narrativeKitDialogID].textDisplayMode = narrativeKitDialog.textDisplayMode
	if (narrativeKitDialogs[narrativeKitDialogID].textDisplayMode = "") then narrativeKitDialogs[narrativeKitDialogID].textDisplayMode = "Instant"
	
	ClearNKitDialogQueue(narrativeKitDialogID)
	CloseNKitDialog(narrativeKitDialogID)
endfunction narrativeKitDialogID

function SetNKitDialogQueueName(narrativeKitDialogID as integer, queueName as string)
	narrativeKitDialogs[narrativeKitDialogID].queueName = queueName
	
endfunction

function ShowNKitDialogQueueIndex(narrativeKitDialogID as integer, queueIndex as integer)
	local tempMessageText as integer
	local tempNameText as integer
	local totalHeight as float
	local windowWidth as float : windowWidth = GetScreenBoundsRight() + Abs(GetScreenBoundsLeft())
	
	CloseNKitDialog(narrativeKitDialogID)
	
	if (queueIndex < 0)
		narrativeKitDialogs[narrativeKitDialogID].queueIndex = -1
		exitfunction
	endif
	if (queueIndex > narrativeKitDialogs[narrativeKitDialogID].queue.length)
		narrativeKitDialogs[narrativeKitDialogID].queueIndex = narrativeKitDialogs[narrativeKitDialogID].queue.length + 1
		exitfunction
	endif
	
	narrativeKitDialogActiveID = narrativeKitDialogID
	narrativeKitDialogs[narrativeKitDialogID].queueIndex = queueIndex
	
	if (narrativeKitDialogs[narrativeKitDialogID].autoHeight = 1)
		tempNameText = CreateText(narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].name)
		SetTextBold(tempNameText, narrativeKitDialogs[narrativeKitDialogID].nameTextBold)
		SetTextSize(tempNameText, narrativeKitDialogs[narrativeKitDialogID].nameTextSize)
		SetTextPosition(tempNameText, -9999, -9999)
		
		if (narrativeKitDialogs[narrativeKitDialogID].messageTextWrapWidth > 0)
			tempMessageText = CreateText(WrapNKitDialogText(narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textOriginal, narrativeKitDialogs[narrativeKitDialogID].messageTextSize, narrativeKitDialogs[narrativeKitDialogID].messageTextWrapWidth))
		else
			tempMessageText = CreateText(narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textOriginal)
		endif
		SetTextBold(tempMessageText, narrativeKitDialogs[narrativeKitDialogID].messageTextBold)
		SetTextSize(tempMessageText, narrativeKitDialogs[narrativeKitDialogID].messageTextSize)
		SetTextPosition(tempMessageText, -9999, -9999)
	
		totalHeight = 0
		totalHeight = totalHeight + narrativeKitDialogs[narrativeKitDialogID].borderThickness
		totalHeight = totalHeight + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1]
		totalHeight = totalHeight + GetTextTotalHeight(tempMessageText)
		totalHeight = totalHeight + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1]
		narrativeKitDialogs[narrativeKitDialogID].size[1] = totalHeight
		
		DeleteText(tempNameText)
		DeleteText(tempMessageText)
	endif
	
	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, narrativeKitDialogs[narrativeKitDialogID].size[0] - narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].size[1] - narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	if (Lower(narrativeKitDialogs[narrativeKitDialogID].anchorTo) = "top")
		narrativeKitDialogs[narrativeKitDialogID].position[0] = GetScreenBoundsLeft() + ((windowWidth - narrativeKitDialogs[narrativeKitDialogID].size[0]) / 2.0) + narrativeKitDialogs[narrativeKitDialogID].offset[0]
		narrativeKitDialogs[narrativeKitDialogID].position[1] = GetScreenBoundsTop() + narrativeKitDialogs[narrativeKitDialogID].offset[1]
		SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].borderThickness / 2.0), narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].borderThickness / 2.0))
	else
		narrativeKitDialogs[narrativeKitDialogID].position[0] = GetScreenBoundsLeft() + ((windowWidth - narrativeKitDialogs[narrativeKitDialogID].size[0]) / 2.0) + narrativeKitDialogs[narrativeKitDialogID].offset[0]
		narrativeKitDialogs[narrativeKitDialogID].position[1] = GetScreenBoundsBottom() - narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].offset[1]
		SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].backgroundSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].borderThickness / 2.0), narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].borderThickness / 2.0))
	endif
	
	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite, narrativeKitDialogs[narrativeKitDialogID].position[0], narrativeKitDialogs[narrativeKitDialogID].position[1])

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite, narrativeKitDialogs[narrativeKitDialogID].size[0] - (narrativeKitDialogs[narrativeKitDialogID].borderThickness * 2.0), narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite, GetSpriteX(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite) + GetSpriteWidth(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite), narrativeKitDialogs[narrativeKitDialogID].position[1])
	
	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite, GetSpriteX(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite) + GetSpriteWidth(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite), narrativeKitDialogs[narrativeKitDialogID].position[1])

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].size[1] - (narrativeKitDialogs[narrativeKitDialogID].borderThickness * 2.0))
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite, narrativeKitDialogs[narrativeKitDialogID].position[0], GetSpriteY(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite) + GetSpriteHeight(narrativeKitDialogs[narrativeKitDialogID].borderTopLeftSprite))

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderRightSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].size[1] - (narrativeKitDialogs[narrativeKitDialogID].borderThickness * 2.0))
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderRightSprite, GetSpriteX(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite) + GetSpriteWidth(narrativeKitDialogs[narrativeKitDialogID].borderTopSprite), GetSpriteY(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite) + GetSpriteHeight(narrativeKitDialogs[narrativeKitDialogID].borderTopRightSprite))

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite, narrativeKitDialogs[narrativeKitDialogID].position[0], GetSpriteY(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite) + GetSpriteHeight(narrativeKitDialogs[narrativeKitDialogID].borderLeftSprite))

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite, narrativeKitDialogs[narrativeKitDialogID].size[0] - (narrativeKitDialogs[narrativeKitDialogID].borderThickness * 2.0), narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite, GetSpriteX(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite) + GetSpriteWidth(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite), GetSpriteY(narrativeKitDialogs[narrativeKitDialogID].borderBottomLeftSprite))

	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].borderBottomRightSprite, narrativeKitDialogs[narrativeKitDialogID].borderThickness, narrativeKitDialogs[narrativeKitDialogID].borderThickness)
	SetSpritePosition(narrativeKitDialogs[narrativeKitDialogID].borderBottomRightSprite, GetSpriteX(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite) + GetSpriteWidth(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite), GetSpriteY(narrativeKitDialogs[narrativeKitDialogID].borderBottomSprite))
	
	SetSpriteImage(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].avatarImage)
	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0], narrativeKitDialogs[narrativeKitDialogID].avatarSize[1])
	if (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "top left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, 0, 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "top centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0] / 2.0, 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "top right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0], 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centre left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, 0, narrativeKitDialogs[narrativeKitDialogID].avatarSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].avatarSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "centre right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0], narrativeKitDialogs[narrativeKitDialogID].avatarSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottom left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, 0, narrativeKitDialogs[narrativeKitDialogID].avatarSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottom centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].avatarSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].avatarAnchorTo) = "bottom right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].avatarSize[0], narrativeKitDialogs[narrativeKitDialogID].avatarSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].avatarSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].avatarOffset[1])
	
	endif
	
	if (narrativeKitDialogs[narrativeKitDialogID].nameTextFontPath <> "") then SetTextFont(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].nameTextFont)
	SetTextAlignment(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].nameTextAlignment)
	SetTextBold(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].nameTextBold)
	SetTextColor(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].nameTextColor[0], narrativeKitDialogs[narrativeKitDialogID].nameTextColor[1], narrativeKitDialogs[narrativeKitDialogID].nameTextColor[2], narrativeKitDialogs[narrativeKitDialogID].nameTextColor[3])
	SetTextSize(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].nameTextSize)
	SetTextString(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].name)
	if (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "top left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "top centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "top right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centre left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "centre right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottom left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottom centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nameTextAnchorTo) = "bottom right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].nameText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nameTextOffset[1])
	
	endif
	
	if (narrativeKitDialogs[narrativeKitDialogID].messageTextWrapWidth > 0)
		narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textWrapped = WrapNKitDialogText(narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textOriginal, narrativeKitDialogs[narrativeKitDialogID].messageTextSize, narrativeKitDialogs[narrativeKitDialogID].messageTextWrapWidth)
	else
		narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textWrapped = narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].textOriginal
	endif
	SetTextAlignment(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].messageTextAlignment)
	SetTextBold(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].messageTextBold)
	SetTextColor(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].messageTextColor[0], narrativeKitDialogs[narrativeKitDialogID].messageTextColor[1], narrativeKitDialogs[narrativeKitDialogID].messageTextColor[2], narrativeKitDialogs[narrativeKitDialogID].messageTextColor[3])
	SetTextSize(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].messageTextSize)
	SetTextString(narrativeKitDialogs[narrativeKitDialogID].messageText, "")
	if (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "top left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "top centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "top right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centre left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "centre right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottom left")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottom centre")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].messageTextAnchorTo) = "bottom right")
		SetTextPosition(narrativeKitDialogs[narrativeKitDialogID].messageText, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].messageTextOffset[1])
	
	endif
	
	if (narrativeKitDialogs[narrativeKitDialogID].allowBackButton = 1)
		if (narrativeKitDialogs[narrativeKitDialogID].queueIndex > 0)
			SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1])
			if (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "top left")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, 0, 0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "top centre")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0] / 2.0, 0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "top right")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0], 0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centre left")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1] / 2.0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centre")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1] / 2.0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "centre right")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1] / 2.0)
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottom left")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1])
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottom centre")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1])
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].backButtonAnchorTo) = "bottom right")
				SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].backButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].backButtonSize[1])
				SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].backButtonOffset[1])
			
			endif
		else
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].backButtonSprite, -9999, -9999)
		endif
	endif
	
	if (narrativeKitDialogs[narrativeKitDialogID].allowCloseButton = 1)
		SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1])
		if (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "top left")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, 0, 0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "top centre")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0] / 2.0, 0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "top right")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0], 0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centre left")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1] / 2.0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centre")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1] / 2.0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "centre right")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1] / 2.0)
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottom left")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1])
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottom centre")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1])
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].closeButtonAnchorTo) = "bottom right")
			SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].closeButtonSize[1])
			SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].closeButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].closeButtonOffset[1])
			
		endif
	endif
	
	SetSpriteSize(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1])
	if (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "tl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "topleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "top left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, 0, 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "tc" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "topcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "topcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "top center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "top centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0] / 2.0, 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "tr" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "topright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "top right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0], 0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
	
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "cl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centerleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centreleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "center left" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centre left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "c" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "cr" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centerright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centreright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "center right" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "centre right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1] / 2.0)
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + (narrativeKitDialogs[narrativeKitDialogID].size[1] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bl" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottomleft" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottom left")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, 0, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bc" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottomcenter" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottomcentre" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottom center" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottom centre")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0] / 2.0, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + (narrativeKitDialogs[narrativeKitDialogID].size[0] / 2.0) + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	elseif (Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "br" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottomright" or Lower(narrativeKitDialogs[narrativeKitDialogID].nextButtonAnchorTo) = "bottom right")
		SetSpriteOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[0], narrativeKitDialogs[narrativeKitDialogID].nextButtonSize[1])
		SetSpritePositionByOffset(narrativeKitDialogs[narrativeKitDialogID].nextButtonSprite, narrativeKitDialogs[narrativeKitDialogID].position[0] + narrativeKitDialogs[narrativeKitDialogID].size[0] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[0], narrativeKitDialogs[narrativeKitDialogID].position[1] + narrativeKitDialogs[narrativeKitDialogID].size[1] + narrativeKitDialogs[narrativeKitDialogID].nextButtonOffset[1])
		
	endif
	
	if (narrativeKitDialogs[narrativeKitDialogID].soundPlayMode = "Start" and narrativeKitDialogs[narrativeKitDialogID].sound > 0)
		PlaySound(narrativeKitDialogs[narrativeKitDialogID].sound, narrativeKitDialogs[narrativeKitDialogID].soundVolume, 0)
	endif
	if (narrativeKitDialogs[narrativeKitDialogID].soundPlayMode = "Loop" and narrativeKitDialogs[narrativeKitDialogID].sound > 0)
		PlaySound(narrativeKitDialogs[narrativeKitDialogID].sound, narrativeKitDialogs[narrativeKitDialogID].soundVolume, 1)
	endif
					
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].revealComplete = 0
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].revealCounter = 0
	narrativeKitDialogs[narrativeKitDialogID].queue[queueIndex].timerLastRevealed = GetMilliseconds()
	narrativeKitDialogs[narrativeKitDialogID].isVisible = 1
endfunction

function StartNKitDialogQueue(narrativeKitDialogID as integer)
	narrativeKitDialogs[narrativeKitDialogID].queueIndex = 0
	
	ShowNKitDialogQueueIndex(narrativeKitDialogID, narrativeKitDialogs[narrativeKitDialogID].queueIndex)
endfunction

function UpdateNKitDialog()
	local nextChr10 as integer
	local nextSpace as integer
	local queueIndex as integer
	
	if (narrativeKitDialogActiveID > -1)
		if (narrativeKitDialogs[narrativeKitDialogActiveID].isVisible = 1)
			queueIndex = narrativeKitDialogs[narrativeKitDialogActiveID].queueIndex
			
			if (Lower(narrativeKitDialogs[narrativeKitDialogActiveID].textDisplayMode) = "instant" and narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 0)
				SetTextString(narrativeKitDialogs[narrativeKitDialogActiveID].messageText, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped)
				narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 1
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogActiveID].textDisplayMode) = "letter" and narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 0)
				if (GetMilliseconds() > narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].timerLastRevealed + narrativeKitDialogs[narrativeKitDialogActiveID].messageTextRevealDelay)
					inc narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter
					narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].timerLastRevealed = GetMilliseconds()
					if (narrativeKitDialogs[narrativeKitDialogActiveID].soundPlayMode = "Reveal" and narrativeKitDialogs[narrativeKitDialogActiveID].sound > 0)
						PlaySound(narrativeKitDialogs[narrativeKitDialogActiveID].sound, narrativeKitDialogs[narrativeKitDialogActiveID].soundVolume, 0)
					endif
					SetTextString(narrativeKitDialogs[narrativeKitDialogActiveID].messageText, Mid(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped, 1, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter))
					if (narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter >= Len(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped))
						narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 1
					endif
				endif
			
			elseif (Lower(narrativeKitDialogs[narrativeKitDialogActiveID].textDisplayMode) = "word" and narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 0)
				if (GetMilliseconds() > narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].timerLastRevealed + narrativeKitDialogs[narrativeKitDialogActiveID].messageTextRevealDelay)
					narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].timerLastRevealed = GetMilliseconds()
					
					nextChr10 = FindString(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped, Chr(10), -1, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter)
					nextSpace = FindString(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped, " ", -1, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter)
					
					if (nextChr10 > 0 and nextSpace > 0)
						if (nextChr10 <= nextSpace)
							narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter = nextChr10 + 1
						else
							narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter = nextSpace + 1
						endif
					elseif (nextChr10 > 0 and nextSpace = 0)
						narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter = nextChr10 + 1
					elseif (nextChr10 = 0 and nextSpace > 0)
						narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter = nextSpace + 1
					else
						narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter = Len(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped) + 1
					endif
					
					if (narrativeKitDialogs[narrativeKitDialogActiveID].soundPlayMode = "Reveal" and narrativeKitDialogs[narrativeKitDialogActiveID].sound > 0)
						PlaySound(narrativeKitDialogs[narrativeKitDialogActiveID].sound, narrativeKitDialogs[narrativeKitDialogActiveID].soundVolume, 0)
					endif
					SetTextString(narrativeKitDialogs[narrativeKitDialogActiveID].messageText, Mid(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped, 1, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter - 1))
					if (narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealCounter >= Len(narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped))
						narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 1
					endif
				endif
				
			endif
			
			if (GetPointerPressed() = 1)
				narrativeKitSpriteHit = GetSpriteHit(GetPointerX(), GetPointerY())
			else
				if (GetPointerState() = 1)
					
				endif
				if (GetPointerReleased() = 1)
					narrativeKitSpriteReleased = GetSpriteHit(GetPointerX(), GetPointerY())
					if (narrativeKitSpriteHit > 0 and narrativeKitSpriteReleased > 0)
						if (narrativeKitSpriteHit = narrativeKitSpriteReleased)
							if (narrativeKitSpriteHit = narrativeKitDialogs[narrativeKitDialogActiveID].backButtonSprite)
								ShowNKitDialogQueueIndex(narrativeKitDialogActiveID, queueIndex - 1)
							
							elseif (narrativeKitSpriteHit = narrativeKitDialogs[narrativeKitDialogActiveID].nextButtonSprite)
								ShowNKitDialogQueueIndex(narrativeKitDialogActiveID, queueIndex + 1)
							
							elseif (narrativeKitSpriteHit = narrativeKitDialogs[narrativeKitDialogActiveID].closeButtonSprite)
								CloseNKitDialog(narrativeKitDialogActiveID)
							
							endif
							
							if (narrativeKitDialogActiveID > -1)
							if (narrativeKitSpriteHit = narrativeKitDialogs[narrativeKitDialogActiveID].avatarSprite or narrativeKitSpriteHit = narrativeKitDialogs[narrativeKitDialogActiveID].backgroundSprite)
								if (narrativeKitDialogs[narrativeKitDialogActiveID].allowTapToSkipTextAnimation = 1)
									if (Lower(narrativeKitDialogs[narrativeKitDialogActiveID].textDisplayMode) = "letter" or Lower(narrativeKitDialogs[narrativeKitDialogActiveID].textDisplayMode) = "word")
										SetTextString(narrativeKitDialogs[narrativeKitDialogActiveID].messageText, narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].textWrapped)
										narrativeKitDialogs[narrativeKitDialogActiveID].queue[queueIndex].revealComplete = 1
									endif
								endif
							endif
							endif
						endif
					endif
					narrativeKitSpriteHit = 0
					narrativeKitSpriteReleased = 0	
				endif
			endif
			
		endif
	endif
endfunction

function WrapNKitDialogText(text as string, fontSize as float, maxWidth as float)
	local finalText as string
	local i as integer
	local length as integer
	local space as integer
	local tmpText as integer
	local tmpText2 as integer
	
	tmpText = CreateText(text)
	SetTextSize(tmpText, fontSize)
	SetTextPosition(tmpText, -10000, -10000)
	if (GetTextTotalWidth(tmpText) >= maxWidth)
		while (GetTextTotalWidth(tmpText) >= maxWidth)
			length = len(text)
			space = 0
			for i = 1 to length
				if (mid(text, i, 1) = " ") then space = i
				tmpText2 = CreateText(left(text, i))
				SetTextSize(tmpText2, fontSize)
				SetTextPosition(tmpText2, -10000, -10000)
				if (GetTextTotalWidth(tmpText2) > maxWidth)
					DeleteText(tmpText2)
					exit
				endif
				DeleteText(tmpText2)
			next
			finalText = finalText + left(text, (space - 1)) + chr(10)
			text = right(text, (len(text) - space))
			DeleteText(tmpText)
			tmpText = CreateText(text)
			SetTextSize(tmpText, fontSize)
			SetTextPosition(tmpText, -10000, -10000)
			if (space = 0) then exit
		endwhile
		if (len(text) > 0) then finalText = finalText + text
	else
		finalText = text
	endif
	DeleteText(tmpText)
endfunction finalText
