paging
gotoPage: anInteger
	| item |
	item := ((anInteger - 1) * self pageHeight) + 1. 
	item >= self itemsCount ifTrue:[^self].
	item < 1 ifTrue:[item := 1].
	firstVisible := item.
	self selected: firstVisible. 
	