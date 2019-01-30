accessing
menuSelectionColor

	Smalltalk at: #UITheme ifPresent: [ :uiTheme |
		"Pharo"
		^uiTheme current settings selectionColor ].
	Smalltalk at: #UserInterfaceTheme ifPresent: [ :uiTheme |
		"Squeak"
		^ (uiTheme current get: #selectionColor for: #MenuItemMorph) ifNil: [(Color r: 0.4 g: 0.5 b: 0.7)] ]