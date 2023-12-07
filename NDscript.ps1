$rapidfire = 'https://download.rapidfiretools.com/download/NetworkDetectiveComputerDataCollector.exe'
$username = Read-Host "Enter your username"
$ipscannerpath = "C:\Users\$username\Downloads\Advanced_IP_Scanner_2.5.4594.1.exe"


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

Read-Host "Press Enter to continue to download Advance IP Scanner..."


# Advance IPScanner download
try {
Write-Host "Downloading Advance IP Scanner"
$ipscanner = 'https://download.advanced-ip-scanner.com/download/files/Advanced_IP_Scanner_2.5.4594.1.exe'
# $bitsJobObj = Start-BitsTransfer $ipscanner -Destination $ipscannerpath
wget $ipscanner -Outfile $ipscannerpath
	# switch ($bitsJobObj.JobState) {
	# 	'Transferred' {
	# 		Complete-BitsTransfer -BitsJob $bitsJobObj
	# 		break
	# 	}
	# 	'Error' {
	# 		throw 'Error downloading'
	# 		Write-Host "Error: $_"
	# 	}
	# }
}
catch {
	Write-Host "Error: $_"
}

Read-Host "Press Enter to Exit..."