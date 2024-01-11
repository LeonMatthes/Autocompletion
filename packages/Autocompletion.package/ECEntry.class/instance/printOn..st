printing
printOn: aStream 
	aStream nextPutAll: self class name;
		 nextPut: $(;
		 nextPutAll: self contents;
		 nextPut: $,;
		 nextPutAll: self type;
		 nextPut: $)