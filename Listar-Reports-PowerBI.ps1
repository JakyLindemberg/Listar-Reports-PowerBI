Connect-PowerBIServiceAccount

$Workspaces = @('Dashboards Desk Manager','Dashboards Service Now','Geral')


clear

foreach($workspace in $Workspaces) {

$ws = Get-PowerBIWorkspace -Name $workspace
$relatorios = Get-PowerBIReport -Workspace $ws

foreach($relatorio in $relatorios) {
 
 $arquivo = $relatorio.name + ";" + $Workspace
  
 Write-Output $arquivo

}
}
