keyboard
handleMenuShortcuts: aKeyboardEvent

	| theEditor keyCharacter controlKeyPressed commandKeyPressed |
	theEditor := self editor.
	keyCharacter := aKeyboardEvent keyCharacter.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	commandKeyPressed := aKeyboardEvent commandKeyPressed.
	
	menuMorph notifyOfInteraction.
	"Home"
	(keyCharacter = Character home or: [keyCharacter = Character arrowUp and: commandKeyPressed] "Mac compatiblity")
			ifTrue: [
				^ menuMorph home
					ifTrue: [true]
					ifFalse: [self closeMenu. false]].
	"End"
	(keyCharacter = Character end or: [keyCharacter = Character arrowDown and: commandKeyPressed]"Mac compatibility")
		ifTrue: [
			^ menuMorph end
				ifTrue: [true]
				ifFalse: [self closeMenu. false]].
	
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
			or: [(self isSpacePressed: aKeyboardEvent) & controlKeyPressed])
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