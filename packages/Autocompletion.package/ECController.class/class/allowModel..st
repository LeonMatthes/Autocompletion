testing
allowModel: aModel 
	^ (aModel respondsTo: #completionController)
		and: [aModel completionController notNil]