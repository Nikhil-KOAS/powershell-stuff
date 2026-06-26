# powershell-stuff


# How to Use (Powershell)

  # Recomended (Will Work when powershell is unavailiable)
  * Download while-smooth.ps1
  * Open settings, system, advanxed, powershell
  * Tap the button which has the label "Change execution policy to allow local powershell scripts to run without signing. Requires signing for remote scripts"
  * Then, in file explorer, open downloads, then right click on the downloaded file, pressing copy file as path.
  * Open task scheduler, then click Create Task in the right side.
  * Set the name to something suitable/ambiguous.
  * Press triggers and then New
  * Set the task to exectute on log on, make sure the username is right, then press ok.
  * Go to actions and then New
  * Set the program/script to your powershell path (C:/Windows/system32\WindowsPowerShell\v1.0/powershell.exe)
  * In 'add arguments', paste your path from earlier and press ok
  * Under Conditions>POWER, make sure all boxes are unchecked
  * Press Ok
  * Press Run in the right hand pane (A powershell screen should appear.) (In future you only need to open task scheduler, then select your task, then press run)
  * You will now need to close edge / create a new window so that that the script can work. 
  * Smoothwall is now disabled (This may sometimes trigger a different firewall screen in school, but this should always work at home)
  # Non-Reccomended (Only works sometimes)
  * Open while-smooth.ps1 in github and copy the source code
  * Right click on the windows icon, select Windows Powershell, and paste in the text from before

