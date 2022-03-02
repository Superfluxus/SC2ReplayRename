$logging = $false
$files = gci -recurse
$replays = $files | Where Attributes -eq "Normal"
foreach ($i in $replays) {
    $fullpath = $i.Name
    $length = $fullpath.length
    if ($length -ge 5) {
        $name = $fullpath.split('-')
        $game = $name[1].tochararray()
        foreach ($x in $game) {
            $test = $x -match '\d'
            if ($test -eq $true) {
                $num = $x
                break
            }
        }
        $matchup = $name[3].tochararray()
        $racematch = @()
        foreach ($v in $matchup) {
            if ($v -cmatch "[A-Z]" ) {
                $racematch += $v
            }
        }      
        $matchupstring = $racematch[0] + "v" + $racematch[1]
        $newstring = "G$num"
        $newname = $newstring + " -" + $name[2] + "-" + $matchupstring + "-" + $name[4]
        if ($logging -eq $true) {
            new-item ".\log.txt" -ErrorAction SilentlyContinue | Out-Null
            $log = "$i.Name was renamed to $newname" | out-file .\log.txt -Append
        }
        Rename-Item -path $i.FullName -NewName $newname
    }
}