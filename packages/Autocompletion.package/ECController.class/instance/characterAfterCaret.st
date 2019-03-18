accessing
characterAfterCaret

	^ self editor text
		at: self editor stopIndex
		ifAbsent: [nil]