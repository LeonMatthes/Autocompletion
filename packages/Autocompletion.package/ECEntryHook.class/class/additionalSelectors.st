accessing
additionalSelectors

	^ self hooks values gather: [:each |
		each additionalSelectors]