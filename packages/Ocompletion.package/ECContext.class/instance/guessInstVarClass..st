private
guessInstVarClass: aSHRange 
	| aClass name |
	name := self sourceOf: aSHRange.
	aClass := controller guessTypeFor: name.
	aClass ifNotNil: [ ^ aClass ].
	^ (ECInstVarTypeGuesser 
		variableName: name
		class: theClass) perform