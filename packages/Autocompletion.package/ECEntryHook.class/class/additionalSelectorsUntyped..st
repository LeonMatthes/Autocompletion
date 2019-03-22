accessing
additionalSelectorsUntyped: contextClass

	^ (self hooks values select: [:each | each respondsTo: #additionalSelectorsUntyped:]) 
		gather: [:each | each additionalSelectorsUntyped: contextClass]