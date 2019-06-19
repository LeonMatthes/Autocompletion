menu morph
wantsToCloseMenuMorph

	^ self model isNil
		or: [self model wantsToCloseAutocompletion]