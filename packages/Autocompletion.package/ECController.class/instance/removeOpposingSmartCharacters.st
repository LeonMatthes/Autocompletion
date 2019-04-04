keyboard
removeOpposingSmartCharacters

	self editor selectInvisiblyFrom: self editor startIndex - 1 to: self editor stopIndex.
	self editor replaceSelectionWith: #''.
	self invalidateEditorMorph.