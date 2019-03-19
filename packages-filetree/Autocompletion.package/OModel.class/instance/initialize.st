accessing
initialize
	super initialize.
	self contract.
	table := OCompletionTable default.
	ctable := OCompletionTable classes.