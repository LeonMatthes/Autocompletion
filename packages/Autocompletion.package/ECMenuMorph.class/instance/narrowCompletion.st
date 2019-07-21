actions
narrowCompletion

	self selected: 0.
	firstVisible := 1.
	self model narrowWith: context completionToken.
	self model notEmpty ifTrue: [ self selected: 1 ].
	(self model entries size < 4 and: [ self model expanded not])
		ifTrue: ["Automatically expand if there are too few entries" self expand].
	self show.
	^ true