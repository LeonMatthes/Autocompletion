accessing
additionalSelectors

	^ (self hooks values select: [:each | each respondsTo: #additionalSelectors]) 
		gather: [:each | each additionalSelectors]