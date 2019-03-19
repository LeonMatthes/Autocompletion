accessing
menuBackgroundColor

	Smalltalk at: #UserInterfaceTheme ifPresent: [ :uiTheme |
		"Squeak"
		(uiTheme current get: #color for: #MenuMorph)
			ifNotNil: [:theColor | ^ theColor]].
	^ Color gray: 0.95