actions
insertSelected
	context model isEmpty ifTrue: [^ false].
	self selectedEntry nowUsed.
	self insertCompletion: (self validateCompletion: (context model completionAt: self selected)).
	self delete.
	^ true