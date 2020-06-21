﻿@{
    AliasesToExport   = ''
    Author            = 'Przemyslaw Klys'
    CompanyName       = 'Evotec'
    Copyright         = 'Evotec (c) 2011-2019. All rights reserved.'
    Description       = 'Useful module that covers extractiong of Active Directory data into a single object that can be later on utilized for reporting or other means.'
    FunctionsToExport = 'Get-WinADDomainInformation', 'Get-WinADForestInformation', 'Get-WinADPasswordAnalysis'
    GUID              = 'a46f9775-04d2-4423-9631-01cfda42b95d'
    ModuleVersion     = '0.1.17'
    PowerShellVersion = '5.1'
    PrivateData       = @{
        PSData = @{
            LicenseUri                 = 'https://github.com/EvotecIT/PSWinDocumentation.AD/blob/master/License'
            Tags                       = 'Windows', 'ActiveDirectory', 'ad'
            ProjectUri                 = 'https://github.com/EvotecIT/PSWinDocumentation.AD'
            ExternalModuleDependencies = 'ActiveDirectory', 'GroupPolicy'
            IconUri                    = 'https://evotec.xyz/wp-content/uploads/2018/10/PSWinDocumentation.png'
        }
    }
    RequiredModules   = @{
        ModuleVersion = '0.0.153'
        ModuleName    = 'PSSharedGoods'
        Guid          = 'ee272aa8-baaa-4edf-9f45-b6d6f7d844fe'
    }, @{
        ModuleVersion = '4.3'
        ModuleName    = 'DSInternals'
        Guid          = '766b3ad8-eb78-48e6-84bd-61b31d96b53e'
    }, @{
        ModuleVersion = '0.0.57'
        ModuleName    = 'ADEssentials'
        Guid          = '9fc9fd61-7f11-4f4b-a527-084086f1905f'
    }, 'ActiveDirectory', 'GroupPolicy'
    RootModule        = 'PSWinDocumentation.AD.psm1'
    ScriptsToProcess  = 'Enums\ActiveDirectory.ps1'
}