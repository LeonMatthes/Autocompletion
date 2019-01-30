accessing - preferences
matchSubStrings

	<preference: 'Match SubStrings'
		category: 'OCompletion'
		description: 'Decide if you want OCompletion to perform subString searches, which can be slower, rather than only front-matching selectors.'
		type: #Boolean>
	^ matchSubStrings ifNil: [ false ]