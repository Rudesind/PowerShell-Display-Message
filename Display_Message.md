## Display Message
---
Script: Display_Message.ps1
Updated: 10/19/2017
Author: Zach Nybo
Version: 1.0


Display_Message.ps1 creates a standard windows alert or tooltip that appears on the desktop. This tooltip can be customized so that the icon and text displayed is different.

#### Usage:
```
Display_Message.ps1 [-type] [-title] [-text] [-icon]
```
#### Options:
  -type: This is for choosing the type of desktop alert icon that is displayed. The icons that can be shown are either **Info**, **Warning**, or **Error**.
  -title: This is the text for the title of the desktop alert.
  -text: This is the text for the body of the alert.
  -icon: This is a path to the icon for the alert in the system tray.

#### Error Codes:
-ASSEMBLY_LOAD_FAILED (4000): Loading the .Net assembly for the form failed.
-OBJECT_CREATION_FAILED (4001): Could not create a form object.
-SETTINGS_FAILED (4002): Could not properly set the settings for the object.

#### Examples:

```
Display_Message.ps1 -type Info -title "File Backup" -text "Backup has started" -icon backup_icon_16x16.ico
```

### References:
---
[Script Code](https://technet.microsoft.com/en-us/library/ff730952.aspx?f=255&MSPPError=-2147217396)
[Powershell Parameters](https://ss64.com/ps/syntax-args.html)
[Powershell Constants](https://stackoverflow.com/questions/2608215/does-powershell-support-constants)
[Powershell Try Catch Block](https://community.spiceworks.com/how_to/121063-using-try-catch-powershell-error-handling)
