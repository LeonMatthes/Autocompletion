actions
home
	"Returns whether we actually changed pages"
	self currentPage = 1
		ifTrue: [^ false].
	self gotoPage: 1.
	self changed.
	^ true