keyboard
smartInput: aKeyboardEvent ifHandled: aBlockClosure

	(self smartInput: aKeyboardEvent keyValue)
		ifNotNil: aBlockClosure.