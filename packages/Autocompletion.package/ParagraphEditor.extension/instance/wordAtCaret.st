*Autocompletion-SqueakCompatibility
wordAtCaret
	^paragraph text asString wordBefore: self startIndex - 1
