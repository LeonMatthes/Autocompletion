initialization
initialize
	super initialize.
	self 
		lastInteraction: DateAndTime now;
		color: self backgroundColor;
		alpha: self calculateAlpha;
		borderWidth: 1;
		borderColor: self dynamicBorderColor;
		startStepping.
	self
		when: #positionChanged
		send: #updateDetail
		to: self