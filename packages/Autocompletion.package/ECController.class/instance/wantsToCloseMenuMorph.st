menu morph
wantsToCloseMenuMorph

	"We want to close the Menu Morph whenever all windows for our model are closed"
	^ self model isNil
		or: [self model containingWindow isNil]