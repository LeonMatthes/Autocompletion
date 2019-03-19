change notifications
registerCompilationNotification

	SystemChangeNotifier uniqueInstance
		noMoreNotificationsFor: self; "Avoid double regristations"
		notify: self ofSystemChangesOfItem: #method using: #methodChanged:.