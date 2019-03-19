as yet unclassified
initialize

	SystemChangeNotifier uniqueInstance
		noMoreNotificationsFor: self; "avoid double registration"
		notify: self ofSystemChangesOfItem: #method using: #methodChanged:.
	self initializeTable.