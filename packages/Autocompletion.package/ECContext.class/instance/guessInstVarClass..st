private-type-guessing
guessInstVarClass: aSHRange 
	| name |
	name := self sourceOf: aSHRange.
	^ (controller guessTypeFor: name) 
		ifNil: [(ECInstVarTypeGuesser 
				variableName: name
				class: theClass) perform]