menu morph
isMenuOpen

	^ self currentMenuMorph
		ifNil: [false]
		ifNotNil: [(self currentMenuMorph itemsCount > 0)
			ifFalse: [self closeMenu. false "legacy code with side effects"]
			ifTrue: [true]]