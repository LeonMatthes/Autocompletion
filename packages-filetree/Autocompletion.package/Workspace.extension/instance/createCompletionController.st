*Autocompletion
createCompletionController
	
	^(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECWorkspaceController ])
			model: self
	