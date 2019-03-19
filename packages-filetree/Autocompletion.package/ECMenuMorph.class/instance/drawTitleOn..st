drawing
drawTitleOn: aCanvas
	"| morphicTransform angle |
	angle := 90 degreesToRadians.
	morphicTransform := MorphicTransform offset: self position angle: angle scale: 1.0.
	aCanvas 
		transformBy: morphicTransform
		clippingTo: self owner innerBounds
		during: [:myCanvas | myCanvas drawString:'Ruben' at: self position font: self class titleFont color: Color blue]
		smoothing: 1."
		