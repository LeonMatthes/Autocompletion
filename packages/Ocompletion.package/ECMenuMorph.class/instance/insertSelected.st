actions
insertSelected
	context model isEmpty ifTrue: [^ false].
	self selectedEntry nowUsed.
	self insertCompletion: (context model completionAt: self selected).
	self delete.
	^ true