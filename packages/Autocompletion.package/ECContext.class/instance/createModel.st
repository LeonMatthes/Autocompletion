accessing
createModel
	^ [self tryCreateModel]
		on: self class allErrors
		do: [:error | ECUntypedModel new
				handleException: error;
				yourself]