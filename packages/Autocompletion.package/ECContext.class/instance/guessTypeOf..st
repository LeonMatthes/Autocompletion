private-type-guessing
guessTypeOf: aNumber

	| range |
	self configureSelectorsOnly.
	recurseCount > 10 ifTrue: [ ^ nil ].
	recurseCount := recurseCount + 1.
	range := ranges at: aNumber.
	range isSelf ifTrue: [ ^theClass ].
	range isSuper ifTrue: [
		^theClass ifNotNil: [
			(theClass isKindOf: Class) ifTrue: [ "It may be a Trait or something else."
				theClass superclass ] ] ].
	range asType ifNotNil: [ :type | "Constant"
		type == Number ifFalse: [ ^type ].
		^(SqNumberParser 
			parse: (
				source
					copyFrom: range start
					to: range end)
			onError: [ ^Number ]) class ].
	(self guessTypeFromContext: (self sourceOf: range))
		ifNotNil: [:type | ^ type].
	range isArgument ifTrue: [ ^self guessArgument: range ].
	range isTemporaryVariable ifTrue: [ ^self guessTempVarClass: range ].
	range isInstanceVariable ifTrue: [ ^self guessInstVarClass: range ].
	range isClassVariable ifTrue: [ ^self guessClassVarClass: range ].
	range isGlobal ifTrue: [ ^self guessGlobal: aNumber ].
	range isUnary ifTrue: [^ self guessUnary: aNumber].
	^nil