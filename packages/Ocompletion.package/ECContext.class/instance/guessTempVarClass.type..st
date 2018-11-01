private-type-guessing
guessTempVarClass: aString type: aSymbol 
	| current type varName varType sourceIndex aClass |
	aClass := controller guessTypeFor: aString.
	aClass ifNotNil: [ ^ aClass ].
	varName := aString.
	varType := aSymbol.
	completionIndex
		to: 1
		by: -1
		do: 
			[ :index | 
			current := ranges at: index.
			(current type = varType and: [ (self sourceOf: current) = varName and: [ index + 3 <= ranges size ] ]) ifTrue: 
				[ (sourceIndex := self findSourceRangeFor: index) notNil ifTrue: 
					[ type := self guessTypeOf: sourceIndex.
					type ifNotNil: [ ^ type ] ] ] ].
	^ nil