event handling
handleMouseEnter: anEvent
	
	controller editor ifNotNil: 
		[self activeHand newKeyboardFocus: controller editor morph.
		anEvent wasHandled: true].