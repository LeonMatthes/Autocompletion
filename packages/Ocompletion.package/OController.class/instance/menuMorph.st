accessing
menuMorph
	^ self expanded ifTrue: [OXMenuMorph] ifFalse: [OMenuMorph]