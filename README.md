# Autocompletion

To install Autocompletion in your image first install [Metacello](https://github.com/Metacello/metacello).

If you are a student of the SWA or SWT courses at the HPI you do not have to install Metacello, as it is already installed in your image.

Now install the Autocompletion using the following command:
```smalltalk
Metacello new
	repository: 'github://MrModder/Autocompletion:master/packages';
	baseline: 'Autocompletion';
	get;
	load.
```

The Autocompletion should now open automatically as you type in the Browser, Workspace or Debugger.

## Troubleshooting
If the Autocompletion still behaves the same as the old OCompletion (e.g. no type-guessing), you may have to change a preference to enable it.

Go into Preferences and enable "Use Autocompletion instead of OCompletion".

If the Autocompletion is not showing up at all, enable the "Enable Autocompletion" preference.

If you install OCompletion after installing Autocompletion it will overwrite the Autocompletion code.
In this case you will have to reinstall Autocompletion.
