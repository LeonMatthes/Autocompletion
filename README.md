# Autocompletion
While technically a fork of [OCompletion](http://www.squeaksource.com/@NZSwcxtqxYUKxV3I/oO0ot5Cp) this project aims to reenable the awesome features of [eCompletion](http://uncomplex.net/ecompletion/) like type-guessing, suggestions based on context, and static analysis. It also updates eCompletion to modern standards. It also incorporates the basic idea of OCompletion (sorting entries by last use) in order to get the best of both worlds. The ultimate goal would be to completely remove OCompletion from the project as it no longer has any benefit over the improved eCompletion (except for some optimizations which are still To-Do).

## Installation instructions
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
