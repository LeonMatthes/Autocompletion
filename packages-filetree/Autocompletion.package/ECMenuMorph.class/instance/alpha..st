accessing
alpha: aNumber

	| oldAlpha |
	oldAlpha := alpha.
	alpha := aNumber.
	oldAlpha ~= alpha
		ifTrue: [self changed].