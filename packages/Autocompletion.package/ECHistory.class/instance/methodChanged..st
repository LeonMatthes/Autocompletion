change notifications
methodChanged: anAbstractEvent

	(anAbstractEvent isRecategorized or: [anAbstractEvent isRemoved])
		ifFalse: [self nowUsed: anAbstractEvent itemSelector]