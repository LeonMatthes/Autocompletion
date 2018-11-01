initialization
initialize
	super initialize.
	self color: self class backgroundColor.
	self borderWidth: 1.
	self borderColor: self class borderColor.
	self
		when: #positionChanged
		send: #updateDetail
		to: self