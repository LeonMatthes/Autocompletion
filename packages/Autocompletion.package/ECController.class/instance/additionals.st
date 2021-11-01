accessing
additionals
	^ self model ifNotNil: [ :model |
		(model respondsTo: #completionAdditionals)
			ifTrue: [model completionAdditionals]]