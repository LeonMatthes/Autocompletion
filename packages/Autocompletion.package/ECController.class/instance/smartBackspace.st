keyboard
smartBackspace

	| opposite theEditor |
	theEditor := self editor ifNil: [ ^nil ].
	theEditor hasSelection ifTrue: [ ^nil ].
	opposite := ECPreferences smartCharactersMapping
		at: (theEditor text
			at: theEditor startIndex - 1
			ifAbsent: [ ^ nil ])
		ifAbsent: [ ^ nil ].
	opposite = (theEditor text at: theEditor stopIndex ifAbsent: [ ^ nil ])
		ifFalse: [ ^ nil ].
	theEditor selectInvisiblyFrom: theEditor startIndex - 1 to: theEditor stopIndex.
	theEditor replaceSelectionWith: String new.
	self invalidateEditorMorph.
	^ true
	
