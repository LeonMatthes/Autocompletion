initialization
initialize

	smartCharactersMapping := Dictionary new.
	smartCharactersMapping
		at: $( put: $);
		at: $[ put: $];
		at: ${ put: $};
		at: $" put: $";
		at: $' put: $'