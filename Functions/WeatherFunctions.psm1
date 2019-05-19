function Get-Weather {
    param (
		[int]$days = 1
    )
    if ($days -ge 10) {
        $days = 10 
    }
    $forecast = (invoke-webrequest 'https://api.weather.gov/gridpoints/OKX/34,33/forecast') | ConvertFrom-Json
    for ($i=1; $i -le $days; $i++) {
        $thisforecast = $forecast.properties.periods[$i-1]
        Write-Host The forecast for $thisforecast.name is $thisforecast.detailedForecast
    }
}