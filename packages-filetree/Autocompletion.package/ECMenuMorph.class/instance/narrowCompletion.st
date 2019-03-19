actions
narrowCompletion
	| model |
	self selected: 0.
	firstVisible := 1.
	model := context model.
	model narrowWith: context completionToken.
	model notEmpty ifTrue: [ self selected: 1 ].
	(model entries size < 4 and: [ model expanded not])
		ifTrue: [self expand].
	self show.
	^ true