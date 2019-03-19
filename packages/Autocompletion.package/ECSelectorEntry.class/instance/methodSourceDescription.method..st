as yet unclassified
methodSourceDescription: aClass method: aCompiledMethod 
	| styler |
	styler := SHTextStylerST80 new.
	styler classOrMetaClass: aClass.
	^ ECEntryDescription
		label: self label
		title: aClass printString
		description: (styler styledTextFor: (self methodSourceOn: aCompiledMethod ) asText)