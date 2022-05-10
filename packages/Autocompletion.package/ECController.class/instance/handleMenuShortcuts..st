keyboard
handleMenuShortcuts: aKeyboardEvent

	| theEditor keyString isShortcut key |
	theEditor := self editor.
	keyString := aKeyboardEvent keyString.
	
	menuMorph notifyOfInteraction.
	
	"Use a caseOf statement with the keyString to make sure the exact shortcut is captured, including all modifiers (ctrl&cmd&opt&shift)"
	keyString caseOf: {
		"Home"
		['<home>'] 	-> [^ menuMorph home ifTrue: [true] ifFalse: [self closeMenu. false]].
		['<Cmd-up>'] 	-> [^ menuMorph home ifTrue: [true] ifFalse: [self closeMenu. false]].
		
		"End"
		['<end>'] 				-> [^ menuMorph end ifTrue: [true] ifFalse: [self closeMenu. false]].
		['<Cmd-down>'] 	-> [^ menuMorph end ifTrue: [true] ifFalse: [self closeMenu. false]].
		
		"Page up"
		['<Ctrl-pageUp>' "Windows"] 	-> [menuMorph pageUp. ^ true].
		['<pageUp>' "Linux"] 			-> [menuMorph pageUp. ^ true].
		['<Cmd-up>' "Mac"] 			-> [menuMorph pageUp. ^ true].
		
		"Page down"
		['<Ctrl-pageDown>' "Windows"] 	-> [menuMorph pageDown. ^ true].
		['<pageDown>' "Linux"] 			-> [menuMorph pageDown. ^ true].
		['<Cmd-down>' "Mac"]			-> [menuMorph pageDown. ^ true].
				
		"Arrow up"
		['<up>'] -> [menuMorph moveUp. ^ true].
	
		"Arrow down"
		['<down>'] -> [menuMorph moveDown. ^ true].
	} otherwise: [].
	
	"With these shortcuts we don't care which specific modifier is pressed. The modifier key is different on the different operating systems anyway. So just do it this way."
	key := aKeyboardEvent keyCharacter.
	isShortcut := aKeyboardEvent controlKeyPressed or: [aKeyboardEvent commandKeyPressed].
	isShortcut ifTrue: [
		key caseOf: {
			"Help menu"
			[$h] 	-> [menuMorph help.  ^ true].
			
			"Right-Arrow"
			[Character arrowRight]		-> [menuMorph showDetail. ^ true].
			
			"Left Arrow"
			[Character arrowLeft] 	-> [menuMorph detailOpen ifTrue: [menuMorph hideDetail. ^ true]].

			"Ctrl-u"
			[$u] -> [menuMorph switchToUntyped. ^ true].

			"Crtl-t"
			[$t] -> [menuMorph expand. ^ true].
		} otherwise: []
	].

	"Tab or Ctrl-Space"
	((self isTabPress: aKeyboardEvent)
			or: [self isAutocompleteKeyComboPressed: aKeyboardEvent])
		ifTrue: [menuMorph insertSelected
				ifTrue: [^ true]].

	"All keys but the alphanumeric chars (without command and control ) 
	and the backspace key do close the menu"
	aKeyboardEvent keyCharacter = Character backspace
		ifTrue: [theEditor isCaretBehindChar not
				ifTrue: [self closeMenu].
			^ false].

	(aKeyboardEvent anyModifierKeyPressed not
			and: [aKeyboardEvent keyCharacter isAlphaNumeric])
		ifFalse: [self closeMenu.
			^ aKeyboardEvent keyCharacter = Character escape].
	^ false