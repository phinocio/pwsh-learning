Start-PodeServer {
	Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http
	
	Set-PodeViewEngine -Type Pode

	Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
		Write-PodeViewResponse -Path 'index'
	}
}
