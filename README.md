# Obsidian-vault-setup
Este proyecto contiene scripts para configurar una estructura de carpetas organizada en tu vault de **Obsidian**, compatible tanto con **Windows** como con **macOS/Linux**. Facilita la creación de una base personalizada para gestionar información personal, profesional y creativa.

>[!IMPORTANT]
>## Compatibilidad
>- **Windows**: `setup-windows.bat`
>- **macOS/Linux**: `setup-macos.sh`

---

## Instalación

### 1. Requisitos
- **Obsidian** instalado.
- **Un archivo `.md`** dentro del vault para que los scripts detecten la carpeta correctamente.  
- Acceso a la terminal (macOS/Linux) o al símbolo del sistema (Windows).
- Git (opcional si quieres clonar el proyecto directamente).

### 2. Cómo usarlo

### **Windows**
1. Descarga el archivo [`setup-windows.bat`](setup-windows.bat).
2. Haz doble clic en el archivo para ejecutarlo.
3. Si te aparece una advertencia de seguridad, haz clic en **"Ejecutar de todas formas"**.
4. El script creará la estructura en tu vault de Obsidian.

### **macOS/Linux**
1. Clona este repositorio o descarga [`setup-macos.sh`](setup-macos.sh).
2. Da permisos de ejecución al script:
   ```bash
   chmod +x setup-macos.sh
3. Ejecuta el script con:
   ```bash
   ./setup-macos.sh
4. La estructura de carpetas se creará automáticamente en tu vault.

---

## Estructura del Vault
El script creará carpetas y archivos bajo las siguientes categorías:

* Personal Profile
* Vision & Goals
* Education & Learning
* Professional Journey
* Creative Expression
* Interests & Passions
* Relationships & Network
* Health & Wellness
* Digital Presence
* Personal Documentation
* Ideas & Innovation
* Future Planning

---
> [!TIP]
> ## Contribuir
> Si quieres contribuir con mejoras o nuevas funcionalidades:
> 1. Realiza un fork del repositorio.
> 2. Crea una nueva rama para tu feature.
> 3. Realiza un pull request cuando esté listo.

