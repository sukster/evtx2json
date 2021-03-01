# Author: Ludek Suk (https://github.com/sukster)
# License: GPL-3.0
# Reference: https://www.elastic.co/guide/en/beats/winlogbeat/current/reading-from-evtx.html

If(Test-Path -path $pwd\winlogbeat.exe) {
	echo "Starting conversion from EVTX to JSON ..."
	$EVTX_FILE_NAME = [io.path]::GetFileNameWithoutExtension((Get-ChildItem -Path $pwd\*.evtx | Select-Object -ExpandProperty Name))
	.\winlogbeat.exe -e -c .\winlogbeat-evtx.yml -E EVTX_FILE=$pwd\$EVTX_FILE_NAME.evtx -E JSON_FILE=$pwd\$EVTX_FILE_NAME.json
	Remove-Item -Path $pwd\data\ -Recurse
	echo "Conversion is complete! See the new file: $EVTX_FILE_NAME.json"
}
Else
{
	echo "The winlogbeat.exe is missing! Please download the ZIP version from https://www.elastic.co/downloads/beats/winlogbeat, extract it and add the winlogbeat.exe into this folder."
}