accessing - preferences
useECompletionInsteadOfOCompletion

	<preference: 'Use eCompletion instead of OCompletion'
		category: 'OCompletion'
		description: 'Decide if you want to use eCompletion in newly opened tools instead of OCompletion.'
		type: #Boolean>
	^useECompletionInsteadOfOCompletion ifNil: [ false ]