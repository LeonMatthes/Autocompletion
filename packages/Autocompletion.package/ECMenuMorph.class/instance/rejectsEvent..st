events-processing
rejectsEvent: anEvent

	anEvent isMouseOver
		ifTrue:
			["Do not ever appear in the stack of hovered morphs. The original text morph should retain its focus. This makes us invisible to the MouseOverHandler."
			^ true].
	^ super rejectsEvent: anEvent