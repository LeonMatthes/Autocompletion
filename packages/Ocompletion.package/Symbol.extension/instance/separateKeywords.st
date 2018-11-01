*Ocompletion
separateKeywords

	^self isKeyword
		ifFalse: [ self ]
		ifTrue: [ (self copyReplaceAll: ':' with: ':  ') withBlanksTrimmed ]
