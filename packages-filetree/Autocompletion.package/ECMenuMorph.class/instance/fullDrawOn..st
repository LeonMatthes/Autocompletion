drawing
fullDrawOn: aCanvas

	super fullDrawOn: (aCanvas asAlphaBlendingCanvas: self alpha)