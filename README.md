# RecipeApp — Proyecto final IBM iOS (SwiftUI)

## Cómo usar esto (sin Mac, gratis, con GitHub Actions)

### 1. Creá el repositorio en GitHub
1. Andá a https://github.com/new
2. Nombre: `RecipeApp` (o el que quieras)
3. Dejalo **público** (así los minutos de Actions son gratis e ilimitados)
4. No marques "Add README" (ya tenés uno)
5. Click en **Create repository**

### 2. Subí estos archivos
**Opción A — con Git (recomendado si ya lo tenés instalado):**
```bash
cd RecipeApp
git init
git add .
git commit -m "Proyecto final SwiftUI"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/RecipeApp.git
git push -u origin main
```

**Opción B — sin Git, desde el navegador:**
1. En la página de tu repo vacío, click en "uploading an existing file"
2. Arrastrá TODA la carpeta `RecipeApp` (la que descomprimiste) hacia esa página
   - GitHub respeta la estructura de subcarpetas al arrastrar una carpeta completa
3. Click en **Commit changes**

### 3. Corré el workflow
1. En tu repo de GitHub, andá a la pestaña **Actions**
2. Vas a ver "Build and Screenshot" en la lista de la izquierda, hacé click
3. Click en **Run workflow** (botón desplegable a la derecha) → **Run workflow**
4. Esperá entre 5 y 10 minutos (se arma la Mac, instala Xcode, compila y corre el simulador)

### 4. Descargá tus capturas
1. Cuando termine (ícono verde ✅), entrá a esa ejecución
2. Abajo de todo vas a ver **Artifacts** → `submission-screenshots`
3. Descargalo (es un .zip con las 4 capturas: 1-recipe-list.png, 2-search.png, 3-recipe-detail.png, 4-favorite-toggle.png)

### 5. Para el código que pide entregar (Tasks 5-7)
Subí o pegá directamente el contenido de:
- `RecipeApp/ContentView.swift`
- `RecipeApp/RecipeRowView.swift`
- `RecipeApp/RecipeDetailView.swift`

### Notas
- Todo esto corre en minutos gratis de GitHub Actions (macOS), no pagás nada.
- Si el workflow falla en el paso de Xcode, puede ser que la versión de Xcode
  cambió en el runner de GitHub — mirá el log del paso "Select Xcode" y
  ajustá el número de versión en el archivo `.github/workflows/build-and-screenshot.yml`.
