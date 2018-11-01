private-type-guessing
guessUnary: aNumber
	"This currently only guesses accessor types"
	| range name |
	range := ranges at: aNumber.
	name := self sourceOf: range.
	^ name = 'new'
		ifTrue: [self guessNewInstanceClass: aNumber]
		ifFalse: [self guessUnaryAccessorClass: aNumber].