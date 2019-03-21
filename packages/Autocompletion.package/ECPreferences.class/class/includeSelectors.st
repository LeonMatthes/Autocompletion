accessing - preferences
includeSelectors

	<preference: 'Include all selectors'
		category: 'Autocompletion'
		description: 'Decide if you want the Autocompletion to use all selectors found in your image.
This may have a significant performance impact.'
		type: #Boolean>
	^ includeSelectors ifNil: [ true ]