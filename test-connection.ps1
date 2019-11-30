$Computers = Get-Content C:\temp\Ping.txt
Foreach ($Computer in $Computers)
{

    if (Test-Connection -ComputerName $Computer -Count 1 -Quiet)
    {
    "Connection is okay $Computer"
     
    } else {
 
  Write-Host  "OH! No ICMP to $Computer" -ForegroundColor Red 
       
    }
    }