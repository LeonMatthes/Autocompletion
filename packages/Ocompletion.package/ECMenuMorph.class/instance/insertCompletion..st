actions
insertCompletion: aString 

	| startIndex oldSelectionInterval editor |
	editor := controller editor.
	startIndex := editor startIndex.
	oldSelectionInterval := startIndex - context completionToken size to: startIndex - 1.
	editor selectInvisiblyFrom: oldSelectionInterval first to: oldSelectionInterval last.  
	editor replaceSelectionWith: aString.
	editor selectAt: startIndex + (aString indexOf: Character space ifAbsent: [ aString size ])  - oldSelectionInterval size