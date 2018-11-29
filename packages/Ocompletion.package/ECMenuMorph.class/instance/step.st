stepping and presenter
step

	| newAlpha |
	newAlpha := self calculateAlpha.
	self alpha ~= newAlpha
		ifTrue: [self alpha: newAlpha].
	
	self alpha <= 0
		ifTrue: [self controller closeMenu]