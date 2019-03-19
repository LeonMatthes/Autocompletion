accessing
editor: theEditor

	(editor ifNil: [ editor := WeakArray new: 1 ])
		at: 1 put: theEditor
