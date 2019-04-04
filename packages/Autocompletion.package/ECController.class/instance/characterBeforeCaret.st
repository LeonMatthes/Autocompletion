accessing
characterBeforeCaret

	^ self editor text
		at: self editor startIndex - 1
		ifAbsent: [nil]