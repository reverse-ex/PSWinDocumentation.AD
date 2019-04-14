function Get-ADObjectFromDistingusishedName {
    [CmdletBinding()]
    param (
        [string[]] $DistinguishedName,
        [Object[]] $ADCatalog,
        [string] $Type = '',
        [string] $Splitter # ', ' # Alternative for example [System.Environment]::NewLine
    )
    if ($null -eq $DistinguishedName) {
        return
    }
    $FoundObjects = foreach ($Catalog in $ADCatalog) {
        foreach ($Object in $DistinguishedName) {
            #$ADObject = $Catalog | & { process { if ($_.DistinguishedName -eq $Object ) { $_ } } }  #| Where-Object { $_.DistinguishedName -eq $Object }
            $ADObject = foreach ($_ in $Catalog) {
                if ($_.DistinguishedName -eq $Object ) { $_ }
            }
            if ($ADObject) {
                if ($Type -eq '') {
                    #Write-Verbose 'Get-ADObjectFromDistingusishedName - Whole object'
                    $ADObject
                } else {
                    #Write-Verbose 'Get-ADObjectFromDistingusishedName - Part of object'
                    $ADObject.$Type
                }
            }
        }
    }
    if ($Splitter) {
        return ($FoundObjects | Sort-Object) -join $Splitter
    } else {
        return $FoundObjects | Sort-Object
    }
}