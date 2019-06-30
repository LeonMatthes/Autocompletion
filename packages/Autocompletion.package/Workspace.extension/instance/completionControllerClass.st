*Autocompletion
completionControllerClass
	
	^ ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECWorkspaceController ]
	