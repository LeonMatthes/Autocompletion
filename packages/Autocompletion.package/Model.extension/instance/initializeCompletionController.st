*Autocompletion
initializeCompletionController

	^ self wantsAutocompletion
		ifTrue: [self addDependent: self createCompletionController]
		ifFalse: [nil]