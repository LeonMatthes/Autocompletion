detail information
createDescriptionWith: anECContext 
	| clazz |
	clazz := self guessTypeWith: anECContext.
	^ clazz 
		ifNil: [ ECEntryDescription label: self label ]
		ifNotNil: 
			[ ECEntryDescription 
				label: self label
				title: clazz printString
				description: clazz comment ]