$basefolder = 'C:\Temp\userhome'
$employees = Import-Csv -Path C:\Temp\employee.csv
foreach($employee in $employees){
$username="$($employee.firstname.Substring(0,1))$($employee.lastname)"

New-Item -Path $basefolder -Name $username -Type directory
}

