accessing - preferences
matchSubStrings

	<preference: 'Match SubStrings'
		category: 'OCompletion'
		description: 'Decide if you want OCompletion to perform subString searches, rather than only front-matching selectors.
This does not have a significant performance impact.'
		type: #Boolean>
	^ matchSubStrings ifNil: [ true ]