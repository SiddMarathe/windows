
$variable_name = Read-Host -Prompt 'variable Name'
Write-Host $variable_name

$variable_value = Read-Host -Prompt 'Variable Value'
Write-Host $variable_value

[Environment]::GetEnvironmentVariable($variable_name, 'User')

[Environment]::SetEnvironmentVariable($variable_name, $variable_value, 'User')