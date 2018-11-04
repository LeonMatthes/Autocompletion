private
computeReceiverClass
	| previous found |
	recurseCount := 0.
	completionIndex = 1 ifTrue: [^nil].
	found := self checkImpossibleReceiver.
	found ifTrue: [^nil].
	previous := ranges at: completionIndex - 1.
	previous type = #cascadeSeparator 
		ifTrue: [^self guessCascadeReceiver: completionIndex - 1].
	^self guessTypeOf: completionIndex - 1