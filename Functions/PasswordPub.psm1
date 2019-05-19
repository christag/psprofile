## CONFIGURATION OPTIONS ##
$passwordPubURL = 'https://passwordpub.com/api'
function New-Password {
	param (
		[int]$count = 1
	)
	for ($i=1; $i -le $count; $i++) {
		$generated_password = Invoke-Webrequest $passwordPubURL'?recipe=STNTT'
		Write-Host $generated_password.content
	}
<#
.SYNOPSIS

Generate a password online with PasswordPub.com.

.DESCRIPTION

Can generate one or more passwords.
Uses https://passwordpub.com

.PARAMETER count
Specify the number of passwords to generate. The default is 1.

.INPUTS

Integer. The number of passwords to be generated.

.OUTPUTS

System.String. New-Password returns a string with the generated password.

.EXAMPLE

PS> New-Password
SUNDAY*coat7UNTILK

.EXAMPLE

PS> New-Password 3
SIZE!dinner7FIRMy
SHORE@china2PERUD
TROUBLE_door4BEYOND_

.EXAMPLE

PS> New-Password -count 2
SATURN$continue3PREPAREDW
WIRE^into6TAKENh

.LINK

https://github.com/christag/passwordpub

#>
}