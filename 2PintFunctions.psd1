#
# Module manifest for module '2PintFunctions'
#
# Generated by: Fredrik Bergman
#
# Generated on  : 2019-11-09
# Last modified : 2019-11-19
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Script module or binary module file associated with this manifest.
ModuleToProcess = '2PintFunctions.psm1'

# Version number of this module.
ModuleVersion = '1.1.9'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'cbf74cc6-79df-48d3-a8c1-18497f294e6d'

# Author of this module
Author = 'Fredrik Bergman'

# Company or vendor of this module
CompanyName = 'Swedish Employment Office'

# Copyright statement for this module
Copyright = '(c) 2019 Fredrik Bergman. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This modules includes a couple of Functions to simplify the management of 2Pints StifleR'

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Add-Subnet','Get-Subnet','Remove-Subnet','Set-Subnet','Get-Client','Set-Job','Get-SignalRHubHealth','Get-SubnetQueue','Get-ClientVersion','Set-ServerDebugLevel','Get-ServerDebugLevel','Start-ServerService','Stop-ServerService','Get-ServerSettings','Set-ServerSettings','Remove-Client','Get-LicenseInformation','Get-Leader','Set-Leader','Get-EventLog','Get-Download','Set-Client')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
#CmdletsToExport = @('*')

# Variables to export from this module
#VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
#AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
ModuleList = '2PintFunctions'

# List of all files packaged with this module
FileList = @('2PintFunctions.psm1')

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = '2Pint,StifleR'

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
DefaultCommandPrefix = 'Stifler'

}

