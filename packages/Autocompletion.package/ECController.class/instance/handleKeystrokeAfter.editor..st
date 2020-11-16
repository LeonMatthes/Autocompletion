keyboard
handleKeystrokeAfter: aKeyboardEvent editor: anEditor 
	(anEditor isNil or:[self isMenuOpen not]) ifTrue:[^self].
	self setModel: anEditor model.
	context narrowWith: anEditor wordAtCaret.
	menuMorph postNarrow.