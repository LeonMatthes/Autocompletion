stepping and presenter
calculateAlpha

	^ self detailOpen
		ifTrue: [self notifyOfInteraction. 1]
		ifFalse: [5000 - self timeSinceLastInteraction asMilliSeconds / 2000.0
			clampLow: 0.0 high: 1.0]