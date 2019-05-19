function Reset-DockerEnvironment {
    # Set Variables
    $j = 0
    $containers = docker container ls -aq
    # Start Outer Progress Bar
    Write-Progress -Activity "Cleaning up Docker Environment" -Status "Stopping:" -PercentComplete ($j) -CurrentOperation 'Cleaning up Docker Environment' -id 1
    # Stop Containers
    $containers | ForEach-Object -Begin {
        $i = 0
    } -Process {
        docker container stop $_
        $i = $i+1
        Write-Progress -Activity "Cleaning up Docker Environment" -Status "Stopping:" -PercentComplete ($i/$containers.count*100) -CurrentOperation 'Stopping Active Containers' -ParentId 1
    }
    $j = $j+33
    # Remove Containers
    $containers | ForEach-Object -Begin {
        $i = 0
    } -Process {
        docker container rm -f $_
        $i = $i+1
        Write-Progress -Activity "Cleaning up Docker Environment" -Status "Deleting:" -PercentComplete ($i/$containers.count*100) -CurrentOperation 'Deleting Containers' -ParentId 1
    }
    $j = $j+33
    # Remove Images
    $images = docker image ls -aq
    $images | ForEach-Object -Begin {
        $i = 0
    } -Process {
        docker image rm $_
        $i = $i+1
        Write-Progress -Activity "Cleaning up Docker Environment" -Status "Deleting:" -PercentComplete ($i/$images.count*100) -CurrentOperation 'Deleting Images' -ParentId 1
    }
    $j = $j+34
}