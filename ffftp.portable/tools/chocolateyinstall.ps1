﻿
$ErrorActionPreference = 'Stop';

$packageName= 'ffftp.portable'
$toolsDir   = Join-Path (Get-ToolsLocation) $packageName
$url        = 'https://github.com/ffftp/ffftp/releases/download/v3.9/ffftp-v3.9-x86.zip'
$url64      = 'https://github.com/ffftp/ffftp/releases/download/v3.9/ffftp-v3.9-x64.zip'
$ErrorActionPreference = 'Stop';


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'zip'
  url           = $url
  url64           = $url64
  softwareName  = 'FFFTP'
  checksum      = ''
  checksum64      = ''
  checksumType  = 'sha256'


}
Install-ChocolateyZipPackage @packageArgs
$installPath = Join-Path (Get-ToolsLocation) $packageName
$installFile = Join-Path $installPath "ffftp.exe"
Install-BinFile -Name "ffftp" $installFile
