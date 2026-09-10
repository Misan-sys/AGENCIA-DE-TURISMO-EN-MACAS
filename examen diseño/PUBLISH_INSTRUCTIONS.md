Instrucciones para publicar el sitio en GitHub Pages

1) Preparar el repositorio en GitHub (web)
   - Entra a https://github.com y crea un repositorio nuevo público.
   - Nombre sugerido: `examen-final-turismo` o similar.

2) Subir los archivos desde la carpeta local (opción recomendada: usar `upload.ps1` o `upload.sh`)
   - Abre PowerShell o Git Bash y cambia a la carpeta del proyecto:

```powershell
cd "C:\Users\USUARIO\Downloads\examen diseño"
```

   - Usar PowerShell script (Windows):
```powershell
.\upload.ps1 https://github.com/TU_USUARIO/TU_REPO.git
```

   - Usar el script Bash (WSL, Git Bash o macOS/Linux):
```bash
./upload.sh https://github.com/TU_USUARIO/TU_REPO.git
```

   - Alternativa manual (si prefieres comandos `git`):
```bash
git init
git add .
git commit -m "Proyecto: EcoMacas - sitio inicial"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
git push -u origin main
```

3) Activar GitHub Pages
   - En el repositorio en GitHub: Settings → Pages
   - En "Source" seleccionar la rama `main` y carpeta `/ (root)`
   - Guardar. Espera algunos minutos hasta que aparezca la URL pública (ej. `https://TU_USUARIO.github.io/TU_REPO/`).

4) Comprobar y corregir enlaces relativos
   - Abre la URL pública o `index.html` localmente con un servidor:
```bash
python -m http.server 8000
# abrir http://localhost:8000/index.html
```

5) Checklist de entrega (verifica antes de enviar)
   - [ ] El repositorio es público.
   - [ ] Existen las 5 páginas: `index.html`, `destinos.html`, `servicios.html`, `nosotros.html`, `contacto.html`.
   - [ ] `css/styles.css` está cargado y aplica estilos.
   - [ ] Imágenes en `images/` con `alt` descriptivos.
   - [ ] Formulario en `contacto.html` usa `label`, `required`, `type="email"`, `type="date"`, etc.
   - [ ] Diseño responsive (comprobar en móvil, tablet y escritorio).
   - [ ] Incluir nombre del estudiante en `README.md`.

6) Soporte adicional
   - Si quieres, proporciona la URL del repositorio y ejecuto el `upload` por ti desde aquí (no tengo credenciales, necesitarás autorizar o ejecutar localmente).
   - Puedo generar un `CNAME` si deseas usar un dominio personalizado.

7) Uso directo con la URL de tu repositorio
   - Repositorio proporcionado: https://github.com/Misan-sys/AGENCIA-DE-TURISMO-EN-MACAS.git

   - Comando PowerShell (ejecutar desde la carpeta del proyecto):
```powershell
cd "C:\Users\USUARIO\Downloads\examen diseño"
.\upload.ps1 https://github.com/Misan-sys/AGENCIA-DE-TURISMO-EN-MACAS.git
```

   - Comando Bash (WSL o Git Bash):
```bash
cd "C:/Users/USUARIO/Downloads/examen diseño"
./upload.sh https://github.com/Misan-sys/AGENCIA-DE-TURISMO-EN-MACAS.git
```

   - Alternativa manual con `git` (si prefieres no usar los scripts):
```bash
cd "C:/Users/USUARIO/Downloads/examen diseño"
git init
git add .
git commit -m "Proyecto: EcoMacas - sitio inicial"
git branch -M main
git remote add origin https://github.com/Misan-sys/AGENCIA-DE-TURISMO-EN-MACAS.git
git push -u origin main
```
