actions
end
	"Returns whether we actually changed pages"
	self currentPage = self pageCount
		ifTrue: [^ false].
	self gotoPage: self pageCount.
	self changed.
	^ true