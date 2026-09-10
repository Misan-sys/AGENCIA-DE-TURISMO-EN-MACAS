param(
  [string]$RemoteUrl
)

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  Write-Error "Git no está instalado. Instala Git y vuelve a ejecutar el script."
  exit 1
}

if (-not $RemoteUrl) {
  $RemoteUrl = Read-Host "Introduce la URL remota (ej. https://github.com/usuario/repo.git)"
}

Write-Host "Iniciando git y subiendo al remoto: $RemoteUrl"
git init
git add .
try {
  git commit -m "Proyecto: EcoMacas - sitio inicial" | Out-Null
} catch {
  Write-Host "No hay cambios para commitear o ya existe un commit."
}
git branch -M main
git remote remove origin 2>$null
git remote add origin $RemoteUrl
git push -u origin main
Write-Host "Push completado. Revisa la URL en GitHub Pages para publicar." 
