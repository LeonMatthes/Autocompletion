*Ocompletion
createCompletionController
	
	^(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECController ])
			model: self
	