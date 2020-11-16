action
switchToUntyped
	receiverClass := nil.
	self configureSelectorsAndVariables.
	model := self createModel.
	self narrowWith: completionToken.