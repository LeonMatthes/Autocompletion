accessing - preferences
askAboutRecommendedPreferences

	<preference: 'Ask to restore recommended preferences'
		category: 'Autocompletion'
		description: 'When enabled, Autocompletion will check for any unrecommended Preferences when updating and allow you to automatically correct them.'
		type: #Boolean>
	^ askAboutRecommendedPreferences ifNil: [ true ]