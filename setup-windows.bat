@echo off
setlocal enabledelayedexpansion

:: Buscar automáticamente el vault de Obsidian en la carpeta Documentos
set "OBSIDIAN_DIR="
for /d %%D in ("%USERPROFILE%\Documents\*") do (
    if exist "%%D\*.md" (
        set "OBSIDIAN_DIR=%%D"
        goto :found
    )
)

:found
if not defined OBSIDIAN_DIR (
    echo Obsidian vault not found in Documents folder. Please check your setup.
    exit /b
)

:: Establecer la ruta del directorio "About Me"
set "BASE_DIR=%OBSIDIAN_DIR%\0. About Me"

:: Crear el directorio "About Me" si no existe
if not exist "%BASE_DIR%" (
    mkdir "%BASE_DIR%"
)

echo Creating folder structure in: %BASE_DIR%
echo.

:: 1. Personal Profile
mkdir "%BASE_DIR%\1. Personal Profile"
echo. > "%BASE_DIR%\1. Personal Profile\Bio.md"
echo. > "%BASE_DIR%\1. Personal Profile\Timeline.md"
echo. > "%BASE_DIR%\1. Personal Profile\Life Philosophy.md"
echo. > "%BASE_DIR%\1. Personal Profile\Personal Brand.md"
mkdir "%BASE_DIR%\1. Personal Profile\Personality Assessment"
echo. > "%BASE_DIR%\1. Personal Profile\Personality Assessment\Strengths & Weaknesses.md"
echo. > "%BASE_DIR%\1. Personal Profile\Personality Assessment\Communication Style.md"
echo. > "%BASE_DIR%\1. Personal Profile\Cultural Background.md"
echo. > "%BASE_DIR%\1. Personal Profile\Languages.md"

:: 2. Vision & Goals
mkdir "%BASE_DIR%\2. Vision & Goals"
echo. > "%BASE_DIR%\2. Vision & Goals\Life Vision.md"
mkdir "%BASE_DIR%\2. Vision & Goals\Goals"
echo. > "%BASE_DIR%\2. Vision & Goals\Goals\Current Goals.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Goals\Completed Goals.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Goals\Future Aspirations.md"
mkdir "%BASE_DIR%\2. Vision & Goals\Action Plans"
echo. > "%BASE_DIR%\2. Vision & Goals\Action Plans\90-Day Plans.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Action Plans\Annual Goals.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Action Plans\5-Year Vision.md"
mkdir "%BASE_DIR%\2. Vision & Goals\Progress Tracking"
echo. > "%BASE_DIR%\2. Vision & Goals\Progress Tracking\Monthly Reviews.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Progress Tracking\Quarterly Assessments.md"
echo. > "%BASE_DIR%\2. Vision & Goals\Progress Tracking\Annual Reflections.md"

:: 3. Education & Learning
mkdir "%BASE_DIR%\3. Education & Learning\Formal Education"
echo. > "%BASE_DIR%\3. Education & Learning\Formal Education\Degrees.md"
echo. > "%BASE_DIR%\3. Education & Learning\Formal Education\Certifications.md"
mkdir "%BASE_DIR%\3. Education & Learning\Self-Learning"
echo. > "%BASE_DIR%\3. Education & Learning\Self-Learning\Online Courses.md"
echo. > "%BASE_DIR%\3. Education & Learning\Self-Learning\Reading List.md"
mkdir "%BASE_DIR%\3. Education & Learning\Skills Development"
echo. > "%BASE_DIR%\3. Education & Learning\Skills Development\Technical Skills.md"
echo. > "%BASE_DIR%\3. Education & Learning\Skills Development\Soft Skills.md"

:: 4. Professional Journey
mkdir "%BASE_DIR%\4. Professional Journey\Career History"
echo. > "%BASE_DIR%\4. Professional Journey\Career History\Resume.md"
echo. > "%BASE_DIR%\4. Professional Journey\Career History\Work Experience.md"
mkdir "%BASE_DIR%\4. Professional Journey\Projects Portfolio"
echo. > "%BASE_DIR%\4. Professional Journey\Projects Portfolio\Current Projects.md"
echo. > "%BASE_DIR%\4. Professional Journey\Projects Portfolio\Past Projects.md"

:: 5. Creative Expression
mkdir "%BASE_DIR%\5. Creative Expression"
mkdir "%BASE_DIR%\5. Creative Expression\Art & Design"
mkdir "%BASE_DIR%\5. Creative Expression\Writing"
mkdir "%BASE_DIR%\5. Creative Expression\Media Creation"

:: 6. Interests & Passions
mkdir "%BASE_DIR%\6. Interests & Passions\Hobbies"
mkdir "%BASE_DIR%\6. Interests & Passions\Entertainment"
echo. > "%BASE_DIR%\6. Interests & Passions\Entertainment\Books.md"
echo. > "%BASE_DIR%\6. Interests & Passions\Entertainment\Movies & Shows.md"
echo. > "%BASE_DIR%\6. Interests & Passions\Entertainment\Music.md"
mkdir "%BASE_DIR%\6. Interests & Passions\Travel"
echo. > "%BASE_DIR%\6. Interests & Passions\Travel\Places Visited.md"
echo. > "%BASE_DIR%\6. Interests & Passions\Travel\Travel Wishlist.md"

:: 7. Relationships & Network
mkdir "%BASE_DIR%\7. Relationships & Network"
mkdir "%BASE_DIR%\7. Relationships & Network\Personal Network"
mkdir "%BASE_DIR%\7. Relationships & Network\Professional Network"
mkdir "%BASE_DIR%\7. Relationships & Network\Community Involvement"

:: 8. Health & Wellness
mkdir "%BASE_DIR%\8. Health & Wellness"
mkdir "%BASE_DIR%\8. Health & Wellness\Physical Health"
mkdir "%BASE_DIR%\8. Health & Wellness\Mental Health"
mkdir "%BASE_DIR%\8. Health & Wellness\Lifestyle"

:: 9. Digital Presence
mkdir "%BASE_DIR%\9. Digital Presence"
mkdir "%BASE_DIR%\9. Digital Presence\Social Media"
mkdir "%BASE_DIR%\9. Digital Presence\Online Portfolio"
echo. > "%BASE_DIR%\9. Digital Presence\Online Portfolio\GitHub Projects.md"
echo. > "%BASE_DIR%\9. Digital Presence\Online Portfolio\Personal Website.md"

:: 10. Personal Documentation
mkdir "%BASE_DIR%\10. Personal Documentation\Journal"
echo. > "%BASE_DIR%\10. Personal Documentation\Journal\Daily Logs.md"
echo. > "%BASE_DIR%\10. Personal Documentation\Journal\Weekly Reviews.md"
echo. > "%BASE_DIR%\10. Personal Documentation\Journal\Monthly Reflections.md"
mkdir "%BASE_DIR%\10. Personal Documentation\Life Events"
mkdir "%BASE_DIR%\10. Personal Documentation\Archives"

:: 11. Ideas & Innovation
mkdir "%BASE_DIR%\11. Ideas & Innovation"
mkdir "%BASE_DIR%\11. Ideas & Innovation\Brainstorming"
mkdir "%BASE_DIR%\11. Ideas & Innovation\Research Interests"
mkdir "%BASE_DIR%\11. Ideas & Innovation\Innovation Journal"

:: 12. Future Planning
mkdir "%BASE_DIR%\12. Future Planning"
mkdir "%BASE_DIR%\12. Future Planning\Personal Development"
mkdir "%BASE_DIR%\12. Future Planning\Life Planning"
echo. > "%BASE_DIR%\12. Future Planning\Life Planning\Bucket List.md"
echo. > "%BASE_DIR%\12. Future Planning\Life Planning\Dreams & Aspirations.md"
mkdir "%BASE_DIR%\12. Future Planning\Strategic Thinking"

echo Folder structure created successfully in your Obsidian vault!
echo Location: %BASE_DIR%
pause