stepping and presenter
step

	self alpha: self calculateAlpha.
	self alpha ~= 1
		ifTrue: [self changed].
	
	self alpha <= 0
		ifTrue: [self controller closeMenu]