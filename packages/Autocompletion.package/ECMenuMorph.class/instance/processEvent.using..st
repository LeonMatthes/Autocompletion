events-processing
processEvent: anEvent using: defaultDispatcher

	(anEvent isMouseOver
		and: [self containsPoint: anEvent position event: anEvent])
		ifTrue:
			[self flag: #hacked. "Normally, we would do this in #mouseOver:. However, to not interfer the mouse over stack, we have explicitly opted-out this source of events in #rejectsEvent:."
			self notifyOfInteraction].

	^ super processEvent: anEvent using: defaultDispatcher