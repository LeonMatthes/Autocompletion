keyboard
handleSmartBackspace
	"removes directly adjacent closing bracket when deleting the opening one"
	
	self editor hasSelection ifTrue: [^ false].

	self hasRemovableOpposingSmartCharacters
		ifTrue: [self removeOpposingSmartCharacters. ^ true].

	^ false