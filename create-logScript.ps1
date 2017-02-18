#
# create_logScript.ps1
#
$folder = "c:\templog"
$log = "c:\templog\AzureLog.txt"
$date  = get-date

if(!(Test-Path $log)){
	New-Item -Path $folder -ItemType Directory
	New-Item -Path $log -ItemType File
	Add-Content -Value "New Log: Azure PowerShell Endpoint - $date" -Path $log
	}
else {
	 Add-Content -Value "Exisiting Log: Azure PowerShell Endpoint -$date" -Path $log
}
