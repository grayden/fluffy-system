Write-Host $Env:AWS_ACCESS_KEY_ID
Write-Host $Env:AWS_SECRET_ACCESS_KEY
Write-Host $Env:AWS_SESSION_TOKEN
aws route53 list-hosted-zones