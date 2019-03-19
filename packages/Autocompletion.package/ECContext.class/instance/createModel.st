accessing
createModel
	| modelClass |
	self receiverClass
		ifNotNil: [^ ECTypedModel class: receiverClass].
	(controller workspace isNil
		and: [theClass notNil])
		ifTrue: [completionIndex = 1
				ifTrue: [^ ECOverrideModel class: theClass]].
			
	modelClass := ECUntypedModel.		
	(controller model respondsTo: #modelClass) ifTrue: [controller model modelClass ifNotNilDo: [:class | modelClass :=  class]].		
	^ modelClass
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors