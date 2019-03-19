preferences
convertToSHSymbol: aSymbol 
	^ (SHTextStylerST80 new attributesFor: aSymbol)
			isNil
				ifTrue: [#default]
				ifFalse: [aSymbol]
