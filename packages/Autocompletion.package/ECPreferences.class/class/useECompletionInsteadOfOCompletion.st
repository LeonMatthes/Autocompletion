accessing - preferences
useECompletionInsteadOfOCompletion

	<preference: 'Use Autocompletion instead of OCompletion'
		category: 'Autocompletion'
		description: 'Decide if you want to use Autocompletion in newly opened tools instead of OCompletion.
Autocompletion is recommended.'
		type: #Boolean>
	^useECompletionInsteadOfOCompletion ifNil: [ true ]