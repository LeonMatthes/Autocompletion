accessing - preferences
fuzzyMatching

	<preference: 'Fuzzy matching'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to perform subString searches and fuzzy matching, rather than only front-matching.
This might have a significant performance impact.'
		type: #Boolean>
	^ self matchSubStrings