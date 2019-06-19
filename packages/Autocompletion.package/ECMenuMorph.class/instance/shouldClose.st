stepping and presenter
shouldClose

	^ self alpha <= 0
		or: [self controller wantsToCloseMenuMorph]