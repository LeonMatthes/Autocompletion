actions
insertCompletion: aString 

	| startIndex oldSelectionInterval editor newCursorPosition |
	editor := controller editor.
	startIndex := editor startIndex.
	oldSelectionInterval := startIndex - context completionToken size to: startIndex - 1.
	newCursorPosition := startIndex + (aString indexOf: Character space ifAbsent: [ aString size ])  - oldSelectionInterval size.
	editor morph handleEdit: [
		editor selectInvisiblyFrom: oldSelectionInterval first to: oldSelectionInterval last.  
		editor replaceSelectionWith: aString.
		editor selectAt: newCursorPosition.]