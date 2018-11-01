accessing
menuFontColor

	Smalltalk at: #UserInterfaceTheme ifPresent: [ :uiTheme |
		"Squeak"
		(uiTheme current get: #textColor for: #MenuMorph)
			ifNotNil: [:theColor | ^ theColor]].
	^ Color gray: 0.5