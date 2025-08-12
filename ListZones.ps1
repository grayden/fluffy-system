param (   
    [Parameter(Mandatory=$true)][String]$awsAccessKeyId,
    [Parameter(Mandatory=$true)][SecureString]$awsSecretAccessKey,
    [Parameter(Mandatory=$true)][SecureString]$awsSessionToken
)

$env:AWS_ACCESS_KEY_ID = $awsAccessKeyId
$env:AWS_SECRET_ACCESS_KEY = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($awsSecretAccessKey))
$env:AWS_SESSION_TOKEN = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($awsSessionToken))

aws route53 list-hosted-zones
