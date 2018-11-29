stepping and presenter
step

	self alpha: self calculateAlpha.
	
	self alpha <= 0
		ifTrue: [self controller closeMenu]