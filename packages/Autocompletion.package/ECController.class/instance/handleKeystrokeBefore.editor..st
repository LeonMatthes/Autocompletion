keyboard
handleKeystrokeBefore: aKeyboardEvent editor: anEditor 
	"I return a boolean.
	true when I have handled the event and no futher processing is needed by the caller."

	self editor: anEditor.
	anEditor ifNil: [^ false].
	self setModel: self editor model.

	"abort for single character or numeric keys"
	(self isSimpleKeyPress: aKeyboardEvent)
		ifTrue: [^ false].

	^ self isMenuOpen
		ifFalse: [self handleTextShortcuts: aKeyboardEvent]
		ifTrue: [self handleMenuShortcuts: aKeyboardEvent]