private-type-guessing
guessUnary: aNumber
	"This currently only guesses accessor types"
	| range name |
	range := ranges at: aNumber.
	name := self sourceOf: range.
	^ name caseOf: {
			['new'] -> [self guessNewInstanceClass: aNumber].
			['class'] -> [self guessClassUnary: aNumber]}
		otherwise: [self guessUnaryAccessorClass: aNumber]