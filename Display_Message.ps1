param(
  [string]$type  = "Info",
  [string]$title = "Title",
  [string]$text  = "Text Body",
  [string]$icon  = "icon"

)
<#
############################
Script : Display_Message.ps1
Updated: 10/19/2017
Author : Zach Nybo
Version: 1.0
############################

Documentation: Display_Message.md

References:
https://technet.microsoft.com/en-us/library/ff730952.aspx?f=255&MSPPError=-2147217396
#>

#***Error Codes***#
New-Variable ASSEMBLY_LOAD_FAILED -option Constant -value 4000
New-Variable OBJECT_CREATION_FAILED -option Constant -value 4001
New-Variable SETTINGS_FAILED -option Constant -value 4002

#***Main***#
# Load the .Net assembly
try {
  [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
} catch {
  exit $ASSEMBLY_LOAD_FAILED
}

# Create a new object for the desktop alert
try {
  $desktopAlert = New-Object System.Windows.Forms.NotifyIcon
} catch {
  exit $OBJECT_CREATION_FAILED
}

# Set the settings for the desktop alert
try {
  $desktopAlert.Icon = $icon
  $desktopAlert.BalloonTipIcon = $type
  $desktopAlert.BalloonTipTitle = $title
  $desktopAlert.BalloonTipText = $text
  $desktopAlert.Visible = $True
  $desktopAlert.ShowBalloonTip(10000)
} catch {
  exit $SETTINGS_FAILED
}
