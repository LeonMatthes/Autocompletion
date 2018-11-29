initialization
initialize
	super initialize.
	self 
		color: self backgroundColor;
		borderWidth: 1;
		borderColor: self dynamicBorderColor;
		lastInteraction: DateAndTime now;
		startStepping.
	self
		when: #positionChanged
		send: #updateDetail
		to: self