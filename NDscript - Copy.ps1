$rapidfire = 'https://download.rapidfiretools.com/download/NetworkDetectiveComputerDataCollector.exe'
$username = Read-Host "Enter your username"

#Validate username
if (-not $username) {
	Write-Host 'You must enter a username. Exiting script'
	Exit
}

$outpath = "C:\Users\$username\Downloads\NetworkDetectiveComputerDataCollector.exe"
#Adding Error handling
try {
	$wc = New-Object System.Net.WebClient
	$wc.DownloadFile($rapidfire, $outpath)
	Write-Host 'Download Complete'
}
catch {
	Write-Host 'Error: $_'
}

