# Autocompletion
While technically a fork of [OCompletion](https://www.squeaksource.com/OCompletion.html), this project aims to reenable the awesome features of [eCompletion](http://uncomplex.net/ecompletion/) like type-guessing, suggestions based on context, and static analysis. 
It also updates eCompletion to modern standards.
But as we don't want to loose the pros of OCompletion, Autocompletion also incorporates the basic idea of OCompletion (sorting entries by last use) in order to get the best of both worlds.
The ultimate goal would be to completely remove OCompletion from the project as it no longer has any benefit over the improved eCompletion (except for some optimizations which are still To-Do).

## Installation/Update instructions
To install Autocompletion in your image first install [Metacello](https://github.com/Metacello/metacello).

If you are a student of the SWA or SWT courses at the HPI you do not have to install Metacello, as it is already installed in your image.

Now install the Autocompletion using the following command:
```smalltalk
Metacello new
	repository: 'github://LeonMatthes/Autocompletion:master/packages';
	baseline: 'Autocompletion';
	get;
	load.
```

The Autocompletion should now open automatically as you type in the Browser, Workspace or Debugger.

*Note:* For best compatibility, remove OCompletion before installing Autocompletion.

## Supported Squeak versions
Autocompletion aims to support:
- Squeak 5.3
- Squeak 6.0

## Troubleshooting
OCompletion and Autocompletion are no longer compatible with each other.
If you have OCompletion installed in your image, please uninstall OCompletion and reinstall Autocompletion to see if the issue is solved that way.

If the Autocompletion is not showing up at all, enable the "Enable Autocompletion" preference.

If you install OCompletion after installing Autocompletion it will overwrite the Autocompletion code.
In this case you will have to reinstall Autocompletion.

If you still encounter issues, you can always [open a new one](https://github.com/MrModder/Autocompletion/issues/new)

## Known issues
### Slow performance
The Autocompletion can be quite slow on budget machines. To compensate for this, there are a few settings that you can tweak.
Go into `Tools`>`Preferences`, open the Autocompletion tab.

To improve performance, it is recommended to set the following settings:
  * Fuzzy matching -> Disabled
  * Include all selectors -> Disabled
  * Case Sensitive -> Enabled
