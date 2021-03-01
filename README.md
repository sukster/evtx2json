# evtx2json
This Powershell script allow you to convert the exported Windows logs in .EVTX format to .JSON file which can be easily ingested by various SIEM products e.g. Azure Sentinel or Splunk.

# Prerequisites:
1. Download the ZIP version of Winlogbeat from https://www.elastic.co/downloads/beats/winlogbeat, extract the winlogbeat.exe from it and add into the same folder.
2. Add your .evtx log file into the same folder. You can download some security logs from Samir Bousseaden (@SBousseaden) here: https://github.com/sbousseaden/EVTX-ATTACK-SAMPLES

# Usage:
powershell.exe -ExecutionPolicy Bypass .\evtx2json.ps1

# Ingest .json to SIEM:
In order to ingest the JSON file into Azure Sentinel, you can use this script from Roberto Rodriguez (@Cyb3rWard0g): https://github.com/Cyb3rWard0g/azure-loganalytics-api-clients/blob/master/powershell/ala-powershell-data-producer.ps1

Example:
powershell.exe -ExecutionPolicy Bypass .\ala-powershell-data-producer.ps1 -WorkspaceId xyz123 -WorkspaceSharedKey xyz123 -LogType "test123" -f .\sample.json -v

As for Splunk, you can use the built-in "Add Data" tool in Splunk GUI and upload the .json log file.
