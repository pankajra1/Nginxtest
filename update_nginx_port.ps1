# Define the configuration file path
$ConfigFile = "C:\Users\HP\Nginxtest\conf\dynamic_port.conf"

# Generate a random port between 2000-65000
$RandomPort = Get-Random -Minimum 2000 -Maximum 65000

# Update the dynamic port configuration file
"listen $RandomPort;" | Out-File -Encoding ASCII $ConfigFile

# Restart Nginx
Start-Process -NoNewWindow -FilePath "C:\Users\HP\Nginxtest\nginx.exe" -ArgumentList "-s reload"

# Output the new port for reference
Write-Output "Nginx is now listening on port: $RandomPort"
