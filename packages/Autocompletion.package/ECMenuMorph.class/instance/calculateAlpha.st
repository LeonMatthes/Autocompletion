stepping and presenter
calculateAlpha

	^ 5000 - self timeSinceLastInteraction asMilliSeconds / 2000.0
		clampLow: 0.0 high: 1.0