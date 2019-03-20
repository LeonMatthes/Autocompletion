accessing - preferences
useECompletionInsteadOfOCompletion

	<preference: 'Use eCompletion instead of OCompletion'
		category: 'Autocompletion'
		description: 'Decide if you want to use eCompletion in newly opened tools instead of OCompletion.
eCompletion is recommended'
		type: #Boolean>
	^useECompletionInsteadOfOCompletion ifNil: [ true ]