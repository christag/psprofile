# PowerShell Profile

This is my PowerShell profile! It includes my custom built functions as importable psm1 files.

# Contents

* Welcome Prompt: Includes current time, date, and weather forecast.
* Import [Functions](Functions)

# Functions

* Get-Weather : Gets the weather forecast for Brooklyn, NY from the National Weather service API. Changing the 'days' parameter will load multiple upcoming days worth of forecasts.
* Reset-DockerEnvironment : Stops all containers, deletes all containers, and deletes all container images.
* Clear-PythonTempFiles : Cleans up pytest and pycache files recursively though the current directory.
* New-Password : Creates a new password from [PasswordPub.com](https://github.com/christag/passwordpub)'s [Live Website](https://passwordpub.com). Changing the 'count' parameter will generate multiple passwords at once.