*Autocompletion
wantsToCloseAutocompletion

	"We want to close the Autocompletion whenever all Morphs for this model have disappeared"
	^ ((self dependents select: #isMorph)
		select: #isInWorld) isEmpty