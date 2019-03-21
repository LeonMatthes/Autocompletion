actions
insertCompletion: aTextOrString

	| startIndex oldSelectionInterval editor newSelection |
	editor := controller editor.
	startIndex := editor startIndex.
	oldSelectionInterval := startIndex - context completionToken size to: startIndex - 1.
	newSelection := (self selectionIntervalIn: aTextOrString) + startIndex - oldSelectionInterval size.
	editor morph handleEdit: [
		editor selectInvisiblyFrom: oldSelectionInterval first to: oldSelectionInterval last.  
		editor replaceSelectionWith: aTextOrString.
		editor selectInterval: newSelection]