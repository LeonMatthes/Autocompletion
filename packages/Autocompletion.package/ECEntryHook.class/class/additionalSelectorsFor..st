accessing
additionalSelectorsFor: receiverClass

	^ (self hooks values select: [:each | each respondsTo: #additionalSelectorsFor:]) 
		gather: [:each | each additionalSelectorsFor: receiverClass]