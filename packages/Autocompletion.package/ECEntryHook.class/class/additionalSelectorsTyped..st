accessing
additionalSelectorsTyped: receiverClass

	^ (self hooks values select: [:each | each respondsTo: #additionalSelectorsTyped:]) 
		gather: [:each | each additionalSelectorsTyped: receiverClass]