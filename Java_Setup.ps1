
$envVariableTarget = Read-Host -Prompt 'Enter the target env for the variable.(User or Machine)'
$variable_name = Read-Host -Prompt 'variable Name'
$variable_value = Read-Host -Prompt 'Variable Value'
Write-Host "$variable_name Env variable will be set as $variable_value for $envVariableTarget"
[Environment]::GetEnvironmentVariable($variable_name, $envVariableTarget )
[Environment]::SetEnvironmentVariable($variable_name, $variable_value, $envVariableTarget )
$path = [Environment]::GetEnvironmentVariable('Path', $envVariableTarget )
$newpath = $path + ';' + $variable_value + '\bin'
[Environment]::SetEnvironmentVariable("Path", $newpath, $envVariableTarget )
