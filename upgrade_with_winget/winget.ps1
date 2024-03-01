$Pathh = $env:TEMP;
$resultfile = "winget_result.txt";
$resultfile2 = "winget_result2.txt";
winget --version | out-file $Pathh\$resultfile;
winget upgrade -h --all | out-file $Pathh\$resultfile -append;
winget upgrade --all --silent --accept-package-agreements --accept-source-agreements --force;
winget --version | out-file $Pathh\$resultfile2
