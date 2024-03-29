help-text
helpText
	| stream |
	stream := TextStream on: Text new.
	self section: 'Character Completion' on: stream.
	self
		shortcut: 'works on'
		text: ' [] {} () <> '''' ""'
		on: stream.
	self
		shortcut: 'usage 1'
		text: 'enter open character - closing character is entered as well'
		on: stream.
	self
		shortcut: 'usage 2'
		text: 'select some text, enter a smart character and the selected text get surrounded by the opening and closing character.'
		on: stream.
		
		
	self section: 'Open/Close Menu' on: stream.
	self
		shortcut: 'ctrl-space'
		text: 'open the completion menu'
		on: stream.
	self
		shortcut: 'ctrl-space or tab'
		text: 'close the menu and insert selected completion.'
		on: stream.
	self
		shortcut: 'ESC'
		text: 'close menu'
		on: stream.
	self
		shortcut: 'ctrl + h'
		text: 'open this help'
		on: stream.
		
	self section: 'Smart Tabbing' on: stream.
	self
		shortcut: 'tab'
		text: 'select the next place to insert Text'
		on: stream.
	self
		shortcut: 'shift + tab'
		text: 'select the previous place to insert Text'
		on: stream.
		
	self section: 'Menu Navigation' on: stream.
	self
		shortcut: 'Arrows up/down'
		text: 'move the selection up and down'
		on: stream.
	self
		shortcut: 'ctrl + Page up/down or: cmd + Arrows up/down'
		text: 'page up and down'
		on: stream.
	self
		shortcut: 'Home/End'
		text: 'move to first or last page of the menu'
		on: stream.
		
		
	self section: 'Show Details and Browse' on: stream.
	self
		shortcut: 'ctrl + right arrow (detail closed)'
		text: 'show details about the selected item. This may be the type of the variable, the source of a method or the implementors of the selector.'
		on: stream.
	self
		shortcut: 'ctrl + right arrow (detail open)'
		text: 'open a new browser for the selected item.'
		on: stream.
	self
		shortcut: 'ctrl + left arrow'
		text: 'close the details'
		on: stream.
	

	self section: 'Changing Menu Contents' on: stream.
	self
		shortcut: 'ctrl-u'
		text: 'switch to untyped mode in a typed menu'
		on: stream.
	self
		shortcut: 'ctrl-t'
		text: 'filter out methods of class Object in a typed menu. press again to make the reappear.'
		on: stream.
	self
		shortcut: 'alphanumeric character'
		text: 'filter the menu to the given input'
		on: stream.
	self
		shortcut: 'backspace'
		text: 'delete an input character, adjust menu to the new input.'
		on: stream.
		
	^ stream contents