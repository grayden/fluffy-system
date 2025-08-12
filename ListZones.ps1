param (   
    [Parameter(Mandatory=$true)][String]$awsAccessKeyId,
    [Parameter(Mandatory=$true)][String]$awsSecretAccessKey,
    [Parameter(Mandatory=$true)][String]$awsSessionToken
)

$env:AWS_ACCESS_KEY_ID = $awsAccessKeyId
$env:AWS_SECRET_ACCESS_KEY = $awsSecretAccessKey
$env:AWS_SESSION_TOKEN = $awsSessionToken

aws route53 list-hosted-zones
