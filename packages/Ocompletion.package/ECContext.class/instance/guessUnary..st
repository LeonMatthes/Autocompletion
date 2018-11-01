private-type-guessing
guessUnary: aNumber
	"This currently only guesses accessor types"
	| range name previousClass |
	range := ranges at: aNumber.
	name := self sourceOf: range.
	previousClass := self guessTypeOf: aNumber - 1.
	(previousClass isKindOf: ClassDescription)
		ifFalse: [ ^ nil ].
	^ (previousClass classThatDefinesInstanceVariable: name)
		ifNil: [ nil ]
		ifNotNil: [ :definingClass | 
			(ECInstVarTypeGuesser 
				variableName: name 
				class: definingClass) perform ]