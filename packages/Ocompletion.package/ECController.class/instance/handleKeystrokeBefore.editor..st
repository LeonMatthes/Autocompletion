keyboard
handleKeystrokeBefore: aKeyboardEvent editor: anEditor 
	"I return a boolean. true when I have handled the event and no futher 
	processing 
	is needed by the caller."
	
	| theEditor keyCharacter controlKeyPressed isSpaceKey commandKeyPressed |
	self editor: anEditor. 
	theEditor := self editor.
	self setModel: theEditor model.
	keyCharacter := aKeyboardEvent keyCharacter.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	commandKeyPressed := aKeyboardEvent commandKeyPressed.
	isSpaceKey := keyCharacter = Character space.
	
	"Ctrl-Space or Tab for open"
	self isMenuOpen
		ifFalse: [^ self tryOpenMenuBefore: aKeyboardEvent editor: self editor].
	
	menuMorph notifyOfInteraction.
	"Home"
	(keyCharacter = Character home
		or: [keyCharacter = Character arrowUp and: commandKeyPressed] "Mac compatiblity")
		ifTrue: [menuMorph home.
			^ true].
	"End"
	keyCharacter = Character end
		ifTrue: [menuMorph end. 
			^ true].
	
	"Help menu"
	(keyCharacter = $h and:[controlKeyPressed or: commandKeyPressed]) 
		ifTrue:[menuMorph help. 
			^true].
	
	"Right-Arrow"
	(keyCharacter = Character arrowRight and: [controlKeyPressed or: commandKeyPressed])
		ifTrue: [menuMorph showDetail.
			^ true].
	"Left Arrow"
	(keyCharacter = Character arrowLeft and: [controlKeyPressed or: commandKeyPressed] and: [menuMorph detailOpen])
		ifTrue: [menuMorph hideDetail.
			^ true].
	"Arrow up"
	keyCharacter = Character arrowUp
		ifTrue: [menuMorph moveUp.
			^ true].
	"Arrow down"
	keyCharacter = Character arrowDown
		ifTrue: [menuMorph moveDown.
			^ true].
		
	"Page up"
	((keyCharacter = Character pageUp  and: controlKeyPressed) "Windows"
		or: [keyCharacter = Character arrowDown and: commandKeyPressed] "Mac")
		ifTrue: [menuMorph pageUp.
			^ true].
	"Page down"
	((keyCharacter = Character pageDown and: controlKeyPressed) "Windows"
		or: [keyCharacter = Character arrowDown and: commandKeyPressed] "Mac compatibility")
		ifTrue: [menuMorph pageDown.
			^ true].
	"Tab or Ctrl-Space"
	(keyCharacter = Character tab
			or: [isSpaceKey & controlKeyPressed])
		ifTrue: [menuMorph insertSelected
				ifTrue: [^ true]].
	"Ctrl-u"
	keyCharacter = $u & commandKeyPressed
		ifTrue: [menuMorph switchToUntyped.
			^ true].
	"Crtl-t"
	(keyCharacter = $t
		and: [controlKeyPressed or: commandKeyPressed])
		ifTrue: [	menuMorph expand.
			^ true].
	"All keys but the alphanumeric chars (without command and control ) 
	and the backspace key do close the menu"
	keyCharacter = Character backspace
		ifTrue: [theEditor isCaretBehindChar not
				ifTrue: [self closeMenu].
			^ false].
	
	(controlKeyPressed not & commandKeyPressed not
			and: [aKeyboardEvent keyCharacter isAlphaNumeric])
		ifFalse: [self closeMenu.
			^ keyCharacter = Character escape].
	^ false