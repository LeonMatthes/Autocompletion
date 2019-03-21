*Autocompletion
image: aForm at: aPoint sourceRect: sourceRect rule: rule
	"Draw the given form. For the 'paint' combination rule use stenciling otherwise simply fill the source rectangle."
	(rule = Form paint or: [rule = Form blend]) ifTrue:[
		^myCanvas
			image: aForm
			at: aPoint
			sourceRect: sourceRect
			rule: Form paintAlpha
			alpha: alpha.
	].
	rule = Form over ifTrue:[
		^myCanvas
			image: aForm
			at: aPoint
			sourceRect: sourceRect
			rule: Form blendAlpha
			alpha: alpha.
	].