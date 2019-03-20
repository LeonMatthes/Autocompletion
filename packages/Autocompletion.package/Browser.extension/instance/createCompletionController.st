*Autocompletion
createCompletionController

	^ (ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECBrowserController ])
			model: self