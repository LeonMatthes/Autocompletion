action
handleException: anException

	self resetEntries.
	self entries add: (ECExceptionEntry newFrom: anException).