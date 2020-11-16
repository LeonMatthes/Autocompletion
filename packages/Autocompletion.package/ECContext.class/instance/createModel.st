accessing
createModel
	^ [self tryCreateModel]
		on: Exception
		do: [:error | ECUntypedModel new
				handleException: error;
				yourself]