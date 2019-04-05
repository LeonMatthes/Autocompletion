keyboard
smartCharacter: aCharacter

	| theEditor opposite previous next |
	self flag: #legacy.
	self flag: #todo.
	self flag: #refactor.
	theEditor := self editor ifNil: [ ^nil ].
	theEditor hasSelection ifTrue: [
		opposite := ECPreferences smartCharactersMapping at: aCharacter ifAbsent: [ ^nil ].
		theEditor replaceSelectionWith: aCharacter asText, theEditor selection, opposite asText.
		ECPreferences keepSelectionAfterAddingSmartCharacters 
			ifTrue: [ theEditor selectFrom: theEditor startIndex + 1 to: theEditor stopIndex - 2 ]
			ifFalse: [ theEditor selectFrom: theEditor stopIndex to: theEditor stopIndex - 1 ].
		self invalidateEditorMorph.
		^ true ].	
	opposite := ECPreferences smartCharactersMapping at: aCharacter ifAbsent: [
		"If this is not a closing pair for a smart character then do nothing."
		(ECPreferences smartCharactersMapping includes: aCharacter) ifFalse: [ ^nil ].
		theEditor blinkPrevParen: aCharacter.
		(theEditor text at: theEditor startIndex ifAbsent: [ ^ nil ]) = aCharacter
			ifFalse: [ ^ nil ].
		theEditor selectFrom: theEditor startIndex + 1 to: theEditor startIndex.
		self invalidateEditorMorph.
		^ true ].
	previous := theEditor text at: theEditor startIndex - 1 ifAbsent: [ Character space ].
	next := theEditor text at: theEditor startIndex ifAbsent: [ Character space ].
	(previous isSeparator and: [ next isSeparator ])
		ifFalse: [ ^ nil ].
	(opposite = aCharacter and: [ next = aCharacter ]) ifTrue: [
		theEditor selectFrom: theEditor startIndex + 1 to: theEditor startIndex.
		self invalidateEditorMorph.
		^ true ].
	theEditor replaceSelectionWith: (Text with: aCharacter with: opposite).
	theEditor selectFrom: theEditor startIndex + 1 to: theEditor startIndex.
	self invalidateEditorMorph.
	^ true