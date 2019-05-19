## FILE CLEANUP ##
function Clear-PythonTempFiles {
    get-childitem -Include .pytest_cache -Recurse -
    force | Remove-Item -Force -Recurse
	get-childitem -Include __pycache__ -Recurse -force | Remove-Item -Force -Recurse
}