#create an environment variable from the .NET class Environment
$env:SystemDirectory = [Environment]::SystemDirectory

#file to modify
$xmlFileName = "$env:SystemDirectory\inetsrv\config\applicationHost.config"

#read the file
[xml]$xmlDoc = Get-Content $xmlFileName

#find our node
$xmlNode = $xmlDoc.SelectSingleNode("/configuration/system.applicationHost/applicationPools/applicationPoolDefaults/processModel")

#set the values
$xmlNode.Attributes["setProfileEnvironment"].Value = "true"
$xmlNode.Attributes["loadUserProfile"].Value = "true"


#Settings object will instruct how the xml elements are written to the file
$settings = New-Object System.Xml.XmlWriterSettings
$settings.Indent = $true
$settings.IndentChars = "    "
#NewLineChars will affect all newlines
$settings.NewLineChars ="`r`n"
#Set an optional encoding, UTF-8 is the most used (without BOM)
$settings.Encoding = New-Object System.Text.UTF8Encoding( $false )

#create a writer
$w = [System.Xml.XmlWriter]::Create($xmlFileName, $settings)
try{
    $xmlDoc.Save( $w )
} finally{
    $w.Dispose()
}
Write-Host 'Complete'
