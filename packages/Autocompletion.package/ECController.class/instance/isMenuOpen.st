menu morph
isMenuOpen
	^menuMorph notNil and: [menuMorph itemsCount > 0 ifTrue: [true] ifFalse: [self closeMenu. false]]
