*Autocompletion
completionControllerClass

	^ ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECBrowserController ]