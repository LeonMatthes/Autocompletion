updating
update: aSymbol
	"Close the menu when the contents of the model changes."

	aSymbol == #contents ifTrue: [ self closeMenu ].
	^super update: aSymbol
	

	