keyboard-testing
hasRemovableOpposingSmartCharacters

	^ self characterAfterCaret isNil not
		and: [(self oppositeSmartCharacterFor: self characterBeforeCaret) = self characterAfterCaret]