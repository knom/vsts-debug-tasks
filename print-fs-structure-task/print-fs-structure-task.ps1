#
# print-fs-structure-task.ps1
#
# [CmdletBinding(DefaultParameterSetName = 'None')]
# param(
#     [string][Parameter(Mandatory = $true)] $variable1, 
#     [string] $variable2
# )

# From http://www.codewrecks.com/blog/index.php/2017/08/04/dump-all-environment-variables-during-a-tfs-vsts-build/

$dirs = Get-ChildItem $env:AGENT_BUILDDIRECTORY -Recurse | Where-Object {!$_.PSIsContainer}
$out = ""
Foreach ($var in $dirs) {
    $out = $out + "`t{0}`t{1}`t{2}`n" -f $var.FullName, $var.LastWriteTime,  $var.Length
}
 
$fileName = "$env:BUILD_ARTIFACTSTAGINGDIRECTORY\files.md"

Write-Output "Dumping file structure into file $fileName"
Set-Content -Path $fileName -Value $out
 
Write-Output "##vso[task.addattachment type=Distributedtask.Core.Summary;name=Agent File Structure;]$fileName"

Write-Host "##vso[task.complete result=Succeeded;]DONE"