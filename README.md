# 2PINTFUNCTIONS POWERSHELL MODULE (.psm/.psd)

## DESCRIPTION

*A **strong** recommendation is to test this in a lab environment, if such exist, first hand ;) This module is provided 'as is' until further notice!*

Things are already possible in many ways, but if you prefer Powershell this module will make it easier to manage subnets, server configurations, read Stiflers event log, get information from and about clients, get license expiration days, link and remove Locations and much, much more without the necessity of logging in to the actual server or however you do it.

## FUTURE CHANGES

<details><summary>View all</summary>
   
- Possibility to use Web Service instead of WMI where applicable
- Create jobs (mostly for test purposes)
- Get debug log files
- etc.
</details>

## CHANGE LOG

#### version 1.2.6 (2020-05-05)
- Added parameter *'AgentID'* to *'Remove-StifleRClient'* for possibility to get unique objects, instead of only based on ComputerName

#### version 1.2.5 (2020-05-05)
- Fixed bug so *'*'* could be used when querying clients with *'Get-StifleRClient'* through WMI

#### version 1.2.4 (2020-04-29)
- Added the switch *'SetAsVPN'* to *'Set-StifleRSubnet'* (using the new WMI method to set this value instead)
- Added the switch *'SetAsWellConnected'* to *'Set-StifleRSubnet'* (using the new WMI method to set this value instead)
- Added the switch *'SetAsInternetBreakout'* to *'Set-StifleRSubnet'* (using the new WMI method to set this value instead)
- Fixed *'Get-StifleRSubnet'* so it's possible to use parameter *'LocationName'* without *'SubnetID'*
- Fixed *'Add-StifleRSubnet'* to use WMI methods instead of property to configure VPN and WellConnected settings

<details><summary>View all</summary>

#### version 1.2.3 (2019-11-26)
- Added function *'Push-StifleRCmdLine'* as *'In progress'*
- Added function *'Push-StifleRPSScript'* as *'In progress'*
- Added function *'Update-StifleRRules'* as *'In progress'*
- Added function *'Update-StifleRServerList'* as *'done!'*

#### version 1.2.2 (2019-11-26)
- Changed *'Set-StifleRClient'* to *'done!'*
- Updated CBH for *'Set-StifleRClient'*

#### version 1.2.1 (2019-11-26)
- Added function *'Get-StifleRErrorDescription'*
- Added *'DefaultParameterSetName = 'Client''* to *'Set-StifleRClient'*
- *'Remove-StifleRSubnet'* now uses method *'RemoveSubnetUsingGuid'* if clients are currently connected to the subnet, fails otherwise

#### version 1.2.0 (2019-11-21)
- The parameter *'Method'* nor also works with *'Roaming'* in function *'Get-StifleRClient'* 
- Added parametersets to *'Get-StifleREventLog'*
- Added check for Child subnets before deletion with *'Remove-StifleRSubnet'*
- Added parameters *'RemoveChildLink'* and *'LinkToParent'* to *'Set-StifleRSubnet'*

#### version 1.1.9 (2019-11-19)
- Added the parameter *'Method'* to *'Get-StifleRClient'*, available options for this parameter are *'GetBranchCacheFlags'* and *'GetConnectionFlags'*
- Changed params quite a bit in *'Get-StifleRClient'*
- Changed EXAMPLES in CBH for *'Get-StifleRClient'*

#### version 1.1.8 (2019-11-19)
- Corrected one missing " that caused a failure when using *'Set-StifleRServerSettings'*

#### version 1.1.7 (2019-11-18)
- Changed *'Get-StifleRSignalRHubHealth'* to return output as PSObject instead of hashtable
- Reworked *'Get-StifleRClient'* quite a bit and also added the parameter IsConnected
- Removed *'Get-Connection'* entirely, replaced with the above parameter IsConnected
- Added *'Set-StifleRClient'* as *'In progress'*

#### version 1.1.6 (2019-11-18)
- Added parameter *'Roaming'* to *'Get-StifleRClient'*
- Changed from *'Get-CimInstance*' to *'Get-CimClass'* to obtian properties of class in *'Get-StifleRClient'*,*'Get-StifleRDownload'* and *'Get-StifleRSubnet'*
- Declared variables *'MissingProps*' and *'ClassProperties'* as arrays in *'Get-StifleRClient'* and *'Get-StifleRDownload'*

#### version 1.1.5 (2019-11-18)
- Changed *'Get-StifleRDownload'* to *'done!'*
- Added Cim* to ExcludedProperties from output of *'Get-StifleRClient'* and *'Get-StifleRSubnet'*

#### version 1.1.4 (2019-11-18)
- Added function *'Get-Download'* as *'In progress'*
- Changd output of '*Get-StifleRServerSettings'* to a PSObject instead of a hashtable
- Removed parameter *'SortByKeyName'* from *'Get-StifleRServerSettings'*

#### version 1.1.3 (2019-11-15)
- Changed *'Set-StifleRBITSJobs'* to **'Set-StifleRJob'**
- Changed *'Get-StifleRSubnetQueues'* to **'Get-StifleRSubnetQueue'**
- Changed *'Get-StifleRClientVersions'* to **'Get-StifleRClientVersion'**
- Changed *'Get-StifleRLeaders'* to **'Get-StifleRLeader'**
- Changed *'Set-StifleRLeaders'* to **'Set-StifleRLeader'**
- Changed *'ntLogs'* to **'Get-StifleREventLog'**
- Changed *'Get-StifleRConnections'* to **'Get-StifleRConnection'**

#### version 1.1.2 (2019-11-14)
- Changed *'Get-StifleRLeaders'* from *'In progress'* to *done!*

#### version 1.1.1 (2019-11-14)
- The function *'Get-StifleREventLogs'* is now completed and up and running
- Changed *'Remove-StifleRClient'* from *'In progress'* to *done!

#### version 1.1.0 (2019-11-13)
- Added functions *'Get-StifleREventLogs'*, *'Get-StifleRLeaders'* and *'Set-StifleRLeaders'* as *'In progress'*
- Added function *'Get-StifleRLicenseInformation'*
- Added parameter InstallDir to CBH for *'Set-StifleRServerSettings'*
   
#### version 1.0.9 (2019-11-12)
- All functions that sets data in some way have *'Write-Debug'* and *'Write-Verbose'* messages now

#### version 1.0.8 (2019-11-12)
- Started to add *'Write-Debug'* and *'Write-Verbose'* where applicable, to be continued...
- Corrected the mistake *'if ( $NewSubnetSuccess = $true )'* to *'if ( $NewSubnetSuccess -eq $true ) {'* in *'Add-StifleRSubnet'*

#### version 1.0.7 (2019-11-11)
- Added *'-NoNewline'* to *'out-file'* while changing config in *'Set-StifleRServerSettings'* to prevent empty rows created in end of configfile
- Added *'-NoNewline'* to *'out-file'* while changing config in *'Set-StifleRServerDebugLevel'* to prevent empty rows created in end of configfile
- Removed *'<'* and *'/>'* from *'$Content.Replace'* in *'Set-StifleRServerSettings'*
- Removed *'<'* and *'/>'* from *'$Content.Replace'* in *'Set-StifleRServerDebugLevel'*

#### version 1.0.6 (2019-11-11)
- Changed *'Remove-Client'* to *'Draft'* status
- Added CBH to *'Get-SignalRHubHealth'*
- Removed *'.LINK'* from all CBHs
- Changed *'.FUNCITONALITY'* to *'StifleR'* in all CBHs
- Removed status *'Draft'* from *'Set-StilfeRBITSJob'* *( = working as expected at the moment and done! )*
- Added *'[cmdletbinding()]'* to all params (to add messages for *'Write-Verbose'* and *'Write-Debug'* later on)

#### version 1.0.5 (2019-11-10)
- Added *'#Requires -Version 5.1'* to *'2PintFunctions.psm'*
- Added output types on success/failure
- Removed obsolete commented code
- Added CBH to *'Get-StifleRClientVersions'*
- Added CBH to *'Get-StifleRSubnetQueues'*
- Changed *'Select'*, *'Where'* and *'Sort'* to *'Select-Object'*, *'Where-Object'* and *'Sort-Object'*
- Fixed *'$DOType'* bug in *'Add-StiflerSubnet'* by adding the value *'Not set'* as default value
- Added *'out-null'* to Invoke-WMIMethod in *'Set-StifleRBITSJob'* to hide WMI-output
- Renamed *'Set-StifleRSubnetProperty'* to *'Set-StifleRSubnet'* to match Get-function
- Re-added *'$SubnetQuery'* with value to *'Set-StifleRSubnet'*, gone for some unknown reason and broke the function...
- Added *'Remove-Client'* with *'In progress'* status

#### version -le 1.0.4 (< 2019-11-10)
- Build phase undocumented
</details>

## REQUIREMENTS

<details><summary>Show</summary><br>

For everything to work as expected the following requirements should be met:

**TL;DR**
- Local Administrator membership on StifleR Server recommended
- Membership in Stiflers 'Global Administrators' group recommended
- PS 5.1 (required) and Remote WMI (required if run remotely)

**Specifics**
- Powershell version 5.1
- Remote WMI from source to the server running '*StifleR Server'*
- *'Test-ServerConnection'* (only available inside the module) uses *'ICMPv4 Echo request'* (also called *'ping'*) as one parameter to check availability of the provided parameter *'Server'*
- For *'Get-/Set-StifleRServerSettings'* and *'Get-/Set-StifleRServerDebugLevel'* *'C$'* (default, or the parameter INSTALLDIR) must be reachable by SMB from source and permissions to read/write in the specified location
- 'Get-StifleRLicenseInformation' requires permission to read License.nfo in InstallDir by fileshare
- 'Get-StifleREventLog' requires permissions to read from event log
- Correct access in StifleR is of course a requirement as well with rights to read or edit depending on what your needs are
- *'Start-/Stop-StilfeRServerService'* requires Administrator rights (if not explicitly provided for the service *StifleRServer'* otherwise)
</details>

## EXPLANATION OF FUNCTIONS

**<details><summary>Add-StifleRSubnet</summary>**
    
**Syntax**

```Add-StiflerSubnet [-Server <String>] [-SubnetID] <String> [-GatewayMAC <String>] [-LocationName <String>] [-TargetBandwidth <UInt32>] [-Description <String>] [-ParentLocationID <String>] [-LEDBATTargetBandwidth <Int32>] [-VPN <Boolean>] [-WellConnected <Boolean>] [-DOType <String>] [-SetDOGroupID] [<CommonParameters>]```

**Example** - Creates a new subnet with the SubnetID of 172.10.10.0 and classes it as a VPN subnet

    Add-StiflerSubnet -Server 'server01' -SubnetID 172.10.10.0 -VPN $true*
</details>

**<details><summary>Get-StifleRClient</summary>**

**Syntax**

```Get-StiflerClient -Client <string[]> [-Server <string>] [-Property <array>] [-ExactMatch] [-IsConnected] [<CommonParameters>]```

```Get-StiflerClient -Client <string[]> [-Server <string>] [-Roaming] [-Method <string>] [<CommonParameters>]```

```Get-StiflerClient [-Server <string>] [-SubnetID <string>] [-Property <array>] [-IsConnected] [<CommonParameters>]```

```Get-StiflerClient [-Server <string>] [-Property <array>] [-Roaming] [<CommonParameters>]```

**Example** - Pull information about the client Client01 from server01

    Get-StiflerClient -Client Client01 -Server 'server01'

**Example 2** - Get-StifleRClient -Server 'server01' -SubnetID 192. -IsConnected

    Get-StifleRClient -Server 'server01' -SubnetID 192. -IsConnected

**Example 3** - Get current connections flags from client01

    Get-StifleRClient -Server 'server01' -Client 'client01' -Method GetConnectionFlags
</details>

**<details><summary>Get-StifleRClientVersion</summary>**

**Syntax**

```Get-StiflerClientVersion [[-Server] <String>] [<CommonParameters>]```

**Example** - Get a list of versions and the number of clients for each one

    Get-StifleRClientVersion -Server 'server01'
</details>

**<details><summary>Get-StifleRDownload</summary>**

**Syntax**

```Get-StiflerDownload [[-Server] <String>] [[-Client] <String>] [[-Property] <Array>] [[-State] <String>] [<CommonParameters>]```

**Example** - Get all downloads for all clients from 'server01'

    Get-StifleRDownload -Server server01

**Example 2** - Get all downloads for 'client01'

    Get-StifleRDownload -Server server01 -Client client01

**Example 3** - Get all downloads for all clients that matches the state 'Error' and only returns the properties
        ComputerName, State and ID
        
    Get-StifleRDownload -Server server01 -State Error -Property ComputerName, State, ID
</details>

**<details><summary>Get-StifleREventLog</summary>**
    
**Syntax**

```Get-StiflerEventLog [-Server <string>] [-MaxEvents <int>] [-EventID <array>] [-Message <string>] [-LevelDisplayName <string>] [-ProviderName <string>] [-StartDate <datetime>] [-EndDate <datetime>] [<CommonParameters>]```

```Get-StiflerEventLog [-Server <string>] [-ListLog] [<CommonParameters>]```

**Example** - Get the 10 latest events from server01 and sort them by Id, default is by ascending TimeCreated

    Get-StiflerEventLog -Server 'server01' -MaxEvents 10 | sort-object Id

**Example 2** - Get all events tagged as Information, EventIDs 4821 or 1506, Message contains 'Saving' created within the last 60 minutes

    Get-StiflerEventLog -Server 'server01' -LevelDisplayName Information -EventID 4821,1506 -Message Saving -StartDate (Get-Date).AddMinutes(-60)
    
**Example 3** - Get all events that happened from 60 to 120 minutes ago

    Get-StiflerEventLog -Server 'server01' -StartDate (Get-Date).AddMinutes(-120) -EndDate (Get-Date).AddMinutes(-60)
</details>

**<details><summary>Get-StifleRErrorDescription</summary>**

**Syntax**

```Get-StiflerErrorDescription [[-Server] <string>] [-ErrorCode] <uint32> [<CommonParameters>]```
   
**Example** - Get information about what 4062 means

    Get-StifleRErrorDescription -server 'server01' -ErrorCode 4062
</details>

**<details><summary>Get-StifleRLeader</summary>**
   
**Syntax**

```Get-StiflerLeader [[-Server] <String>] [[-SubnetID] <String>] [<CommonParameters>]```

**Example** - Stops the StifleRServer service on server01

    Get-StifleRLeader -Server 'sserver01'
</details>

**<details><summary>Get-StifleRLicenseInformation</summary>**

**Syntax**

```Get-StiflerLicenseInformation [[-Server] <String>] [[-InstallDir] <String>] [<CommonParameters>]```

**Example** - Get information about your licensing from server01

    Get-StifleRLicenseInformation -Server 'server01'
</details>

**<details><summary>Get-StifleRServerDebugLevel</summary>**

**Syntax**

```Get-StiflerServerDebugLevel [[-Server] <String>] [[-InstallDir] <String>] [<CommonParameters>]```

**Example** - Get the current debug level on server01

    Get-StifleRServerDebugLevel -Server 'server01'

**Example 2** - Get the current debug level on server01 where the installations directory for StifleR Server is
'D$\Program Files\2Pint Software\StifleR' instead of the default directory

    Get-StifleRServerDebugLevel -Server 'server01' -InstallDir
    'D$\Program Files\2Pint Software\StifleR'
</details>

**<details><summary>Get-StifleRServerSettings</summary>**

**Syntax**

```Get-StiflerServerSettings [[-Server] <String>] [[-InstallDir] <String>] [<CommonParameters>]```

**Example** - Get the settings from server01

    Get-StifleRServerSettings -Server 'server01'

**Example 2** - Get the settings from server01 where the installations directory for StifleR Server is
'D$\Program Files\2Pint Software\StifleR' instead of the default directory

    Get-StifleRServerSettings -Server 'server01' -InstallDir
    'D$\Program Files\2Pint Software\StifleR'
</details>

**<details><summary>Get-StifleRSignalRHubHealth</summary>**

**Syntax**

```Get-StiflerSignalRHubHealth [[-Server] <String>] [<CommonParameters>]```

**Example** - Get statistics about Signal-R

    Get-StifleRSIgnalRHubHealth -Server 'server01'
</details>

**<details><summary>Get-StifleRSubnet</summary>**

**Syntax**

```Get-StiflerSubnet [[-SubnetID] <String>] [-LocationName <String>] [[-Server] <String>] [-Property <Array>] [-ShowRedLeader] [-ShowBlueLeader] [<CommonParameters]```

**Example** - Pull subnets with locationname like '21-' from server01

    Get-StiflerSubnet -Identity '21-*' -Server 'server01' | Format-Table -AutoSize

**Example 2** - Pull subnets where subnetID like '172.16' from server01 and show current red-/blue leader

    Get-StiflerSubnet -Server 'server01' -SubnetID '172.16' | Select-Object -uUnique LocationName, ActiveClients, AverageBandwidth, RedLeader, BlueLeader | Format-Table -AutoSize

**Example 3** - Pull all subnets from sever01 with specific properties and sorts them based on AverageBandwidth

    Get-StiflerSubnet -Server 'sever01' -Property LocationName, ActiveClients, AverageBandwidth, SubnetID | Select LocationName, SubnetID, ActiveClients, AverageBandwidth, RedLeader, BlueLeader | Where ActiveClients -gt 0 | Sort AverageBandwidth, LocationName -Descending | Format-Table -AutoSize
</details>

**<details><summary>Get-StifleRSubnetQueue</summary>**

**Syntax**

```Get-StiflerSubnetQueue [[-Server] <String>] [<CommonParameters>]```

**Example** - Get information about the current queues in StifleR

    Get-StifleRSubnetQUeue -server 'server01'
</details>

**<details><summary>Remove-StifleRClient</summary>**

**Syntax**

```Remove-StiflerClient -Client <string> [-Server <string>] [-Flush] [-Quiet] [-SkipConfirm] [<CommonParameters>]```

```Remove-StiflerClient -AgentID <string> [-Server <string>] [-Flush] [-Quiet] [-SkipConfirm] [<CommonParameters>]```

**Example** - Removes the client with ComputerName Client1 and hides the confirmation
dialog as well as the successful result message

    Remove-StifleRClient -Server 'server01' -Client Client1 -SkipConfirm -Quiet

**Example 2** - Removes the client with ComputerName Client1 and makes a flush

    Remove-StifleRClient -Server 'server01' -Client Client1 -Flush

**Example 3** - Prompts a question about removing all clients with ComputerName like MININT-

    Remove-StifleRClient -Server 'server01' -Client MININT-
</details>

**<details><summary>Remove-StifleRSubnet</summary>**

**Syntax**

```Remove-StiflerSubnet [-LocationName] <String> [-Server <String>] [-DeleteChildren] [-SkipConfirm] [-Quiet] [<CommonParameters>]```

```Remove-StiflerSubnet [-SubnetID] <String> [-Server <String>] [-DeleteChildren] [-SkipConfirm] [-Quiet] [<CommonParameters>]```

**Example** - Removes the subnet with SubnetID 172.10.10.0 and hides the confirmation
dialog as well as the successful result message

    Remove-StiflerSubnet -Server 'server01' -SubnetID 172.10.10.0 -SkipConfirm -Quiet

**Example 2** - Removes the subnet with the LocationName TESTNET and deletes (if any) the
childobjects of this subnet

    Remove-StiflerSubnet -Server 'server01' -LocationName TESTNET -DeleteChildren

**Example 3** - Prompts a question about removing all subnets with SubnetID like 172

    Remove-StiflerSubnet -Server 'server01' -SubnetID 172
</details>

**<details><summary>Set-StifleRClient</summary>**
   
**Syntax**

```Set-StiflerClient -Client <string> [-Server <string>] [<CommonParameters>]```

```Set-StiflerClient [-Server <string>] [-Client <string>] [-SetNotLeaderMaterial] [<CommonParameters>]```

```Set-StiflerClient [-Server <string>] [-Client <string>] [-SetClientAsNonLeader] [<CommonParameters>]```

```Set-StiflerClient [-Server <string>] [-Client <string>] [-Disconnect] [<CommonParameters>]```

```Set-StiflerClient -ContentID <string> [-Server <string>] [-Client <string>] [-BranchCacheFlush] [<CommonParameters>]```

```Set-StiflerClient [-Server <string>] [-Client <string>] [-WOL] [<CommonParameters>]```

**Example** - Disconnect the client 'client01' from StifleR

    Set-StifleRClient -server server01 -Client client01 -Disconnect
</details>

**<details><summary>Set-StifleRJob</summary>**

**Syntax**

```Set-StiflerJob [[-Target] <String>] [-TargetLevel] <String> [-Action] <String> [[-Server] <String>] [<CommonParameters>]```

**Example** - Cancels all current transfers on the subnet 192.168.20.2

    Set-StiflerJob -Server 'server01' -TargetLevel Subnet -Action Cancel -Target 192.168.20.2

**Example 2** - Suspends all current transfers on the client Client01

    Set-StiflerJob -Server 'server01' -TargetLevel Client -Action Suspend -Target Client01

**Example 3** - Resumes all the transfers known to StifleR as suspended earlier on all subnets

    Set-StiflerJob -Server 'server01' -TargetLevel All -Action Resume
</details>

**<details><summary>Set-StifleRServerDebugLevel</summary>**

**Syntax**

```Get-StiflerServerDebugLevel [[-Server] <String>] [[-InstallDir] <String>] [<CommonParameters>]```

**Example** - Enable Super verbose debugging on server01

    Set-StifleRServerDebugLevel -Server 'server01' -DebugLevel '6.Super Verbose'

**Example 2** - Disable debugging on server01 where the installations directory for StifleR Server is
'D$\Program Files\2Pint Software\StifleR' instead of the default directory

    Set-StifleRServerDebugLevel -Server 'server01' -DebugLevel '0.Disabled' -InstallDir
    'D$\Program Files\2Pint Software\StifleR'
</details>

**<details><summary>Set-StifleRServerSettings</summary>**

**Syntax**

```Set-StiflerServerSettings [-Server <String>] [-InstallDir <String>] -Property <String> -NewValue <String> [-SkipConfirm <String>] [<CommonParameters>]```

```Set-StiflerServerSettings [-Server <String>] [-InstallDir <String>] -Property <String> [-SkipConfirm <String>] -Clear [<CommonParameters>]```

**Example** - Sets the property wsapifw to 1 in StifleR Server

    Set-StifleRServerSettings -Server 'server01' -Property wsapifw -NewValue 1

**Example 2** - Sets the property wsapifw to 1 in StifleR Server without asking for confirmation

    Set-StifleRServerSettings -Server 'server01' -Property wsapifw -NewValue 1 -SkipConfirm

**Example 3** - Sets the property wsapifw to nothing in StifleR Server

    Set-StifleRServerSettings -Server 'server01' -Property wsapifw -Clear
</details>

**<details><summary>Set-StifleRSubnet</summary>**

**Syntax**

```Set-StiflerSubnet -SubnetID <string> -Property <string> -NewValue <string> [-Server <string>] [<CommonParameters>]```

```Set-StiflerSubnet -SubnetID <string> [-Server <string>] [-RemoveChildLink <string>] [<CommonParameters>]```

```Set-StiflerSubnet -SubnetID <string> [-Server <string>] [-LinkToParent <string>] [<CommonParameters>]```

```Set-StiflerSubnet -SubnetID <string> [-Server <string>] [-SetAsWellConnected <bool>] [<CommonParameters>]```

```Set-StiflerSubnet -SubnetID <string> [-Server <string>] [-SetAsVPN <bool>] [<CommonParameters>]```

```Set-StiflerSubnet -SubnetID <string> [-Server <string>] [-SetAsInternetBreakout <bool>] [<CommonParameters>]```

**Example** - Sets the property VPN to True on subnet 172.10.10.0

    Set-StifleRSubnet -Server server01 -SubnetID 172.10.10.0 -SetAsVPN $true
**Example 2** - Sets the property TargetBandwidth to 20Mb/s on subnet 172.10.10.0

    Set-StifleRSubnet -Server server01 -SubnetID 172.10.10.0 -Property TargetBandwidth -NewValue 20480
</details>

**<details><summary>Start-StifleRServerService</summary>**

**Syntax**

```Start-StiflerServerService [[-Server] <String>] [<CommonParameters>]```

**Example 2** - Starts the StifleRServer service on server01

    Start-StifleRServerService -Server 'server01'
</details>

**<details><summary>Stop-StifleRServerService</summary>**

**Syntax**

```Stop-StiflerServerService [[-Server] <String>] [-Force] [<CommonParameters>]```

**Example** - Stops the StifleRServer service on server01

    Stop-StifleRServerService -Server 'server01'

**Example 2** - Stops the StifleRServer service on server01 by killing the process of the service

    Stop-StifleRServerService -Server 'server01' -Force
</details>

**<details><summary>Update-StifleRServerList</summary>**
   
**Syntax**

```Update-StiflerServerList -ServerList <string> [-Server <string>] [-Client <string>] [-Reconnect] [<CommonParameters>]```

```Update-StiflerServerList [-Server <string>] [-All] [-ServerList <string>] [-Reconnect] [<CommonParameters>]```

```Update-StiflerServerList [-Server <string>] [-SubnetID <string>] [-ServerList <string>] [-Reconnect] [<CommonParameters>]```

**Example** - Updates server list on client01 with ServerLists specified value and reconnects after change

    Update-StifleRServerList -Server server01 -Client client01 -ServerList http://stifler.domain.local:1414 -Reconnect

**Example 2** - Updates server list on all clients currently connected to subnet 192.10.10.0 with ServerLists specified value, but don't reconnect after change

    Update-StifleRServerList -Server server01 -Subnet 192.10.10.0 -ServerList http://stifler.domain.local:1414 -Reconnect
</details>

## INSTALLATION

Copy *'2PintFunctions.psm1'* and *.psd1* to *'%ProgramFiles%\WindowsPowershell\Modules\2PintFunctions\'* or use 'import-module <PATH>'.
