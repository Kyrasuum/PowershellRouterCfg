# Set rule ID ### "from Zone" to "To Zone" "Group or IP name" "Group or IP name" "Action" "Protocol" "Optional Log"
class rule {
	[string]	$prefix
	[int]		$id
	[string[]]	$frmzones
	[string[]]	$tozones
	[string[]]	$group
	[string]	$action
	[string[]]	$protocols
	[string]	$postfix
}

function process-cfg {
	param(
		[Parameter(Mandatory=$true)][string]$source
		[Parameter(Mandatory=$true)][string]$destination
	)

	[int]$rulread = 0
	[int]$grpread = 0
	[int]$addread = 0
	[string]$rultext = ""
	[string]$grptext = ""
	[string]$addtext = ""
	[rule]$rules

	foreach($line in Get-Content $source){

	}
}

function menu {
	Write-Host "RouterConfig Parser"
	Write-Host "Please enter the source file:"
	$source = Read-Host ">"
	Write-Host "Please enter the destination file:"
	$destination = Read-Host ">"

	Write-Host "Parsing router config..."
	process-cfg $source $destination
	Write-Host "Done parsing"

	[string]$input
	do{
		Write-Host "What do you want to do?"
		Write-Host "q) Quit the menu"
		$input = Read-Host ">"
	}while($input -ne "q")
}