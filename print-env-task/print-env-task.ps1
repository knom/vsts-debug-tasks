#
# print-env-task.ps1
#
# [CmdletBinding(DefaultParameterSetName = 'None')]
# param(
#     [string][Parameter(Mandatory = $true)] $variable1, 
#     [string] $variable2
# )

# From http://www.codewrecks.com/blog/index.php/2017/08/04/dump-all-environment-variables-during-a-tfs-vsts-build/

$envVariables = (Get-ChildItem env:*) | Sort-Object Name
$out = ""
foreach ($var in $envVariables) {
    $out = $out + "`t{0,-28} = {1,-28}`n" -f $var.Name, $var.Value
}
 
$fileName = "$env:BUILD_ARTIFACTSTAGINGDIRECTORY\env-variables_$($env:SYSTEM_TASKINSTANCEID).md"

Write-Output "Dumping environment variables into file $fileName"
Set-Content -Path $fileName -Value $out
 
Write-Output "##vso[task.addattachment type=Distributedtask.Core.Summary;name=Environment Variables ($($env:TASK_DISPLAYNAME));]$fileName"

Write-Host "###############################################"
Write-Host $out
Write-Host "###############################################"

Write-Host "##vso[task.complete result=Succeeded;]DONE"