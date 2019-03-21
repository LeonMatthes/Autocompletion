stepping and presenter
validateCompletion: aStringOrText

	^ ECPreferences smartTab
		ifTrue: [aStringOrText]
		ifFalse: [aStringOrText copyReplaceAll: ECPreferences smartTabString with: '']