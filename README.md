# evtx2json
This Powershell script allow you to convert the exported Windows logs in .EVTX format to .JSON file which can be easily ingested by various SIEM projects e.g. Azure Sentinel or Splunk.

# Prerequisites:
Download the ZIP version of Winlogbeat from https://www.elastic.co/downloads/beats/winlogbeat, extract the winlogbeat.exe from it and add it to the same folder.

# Usage:
powershell.exe -ExecutionPolicy Bypass .\evtx2json.ps1
