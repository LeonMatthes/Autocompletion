accessing - preferences
matchSubStrings

	<preference: 'Match SubStrings'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to perform subString searches, rather than only front-matching selectors.
This does not have a significant performance impact.'
		type: #Boolean>
	^ matchSubStrings ifNil: [ true ]