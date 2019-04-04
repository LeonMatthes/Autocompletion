keyboard
smartBackspace
	"nil behaviour for legacy backwards compatibility"
	self flag: #legacy.

	^ self handleSmartBackspace
		ifFalse: [nil]
		ifTrue: [true]