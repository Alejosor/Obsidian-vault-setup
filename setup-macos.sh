#!/bin/bash

# Buscar automáticamente el vault de Obsidian en la carpeta Documentos
OBSIDIAN_DIR=$(find ~/Documents -type f -name "*.md" -print -quit 2>/dev/null | xargs -I {} dirname {})

if [ -z "$OBSIDIAN_DIR" ]; then
    echo "Vault de Obsidian no encontrado en la carpeta Documentos."
    exit 1
fi

# Establecer la ruta del directorio "About Me"
BASE_DIR="$OBSIDIAN_DIR/0. About Me"

# Crear el directorio "About Me" si no existe
mkdir -p "$BASE_DIR"

echo "Creando la estructura de carpetas en: $BASE_DIR"
echo

# 1. Personal Profile
mkdir -p "$BASE_DIR/1. Personal Profile/Personality Assessment"
touch "$BASE_DIR/1. Personal Profile/Bio.md"
touch "$BASE_DIR/1. Personal Profile/Timeline.md"
touch "$BASE_DIR/1. Personal Profile/Life Philosophy.md"
touch "$BASE_DIR/1. Personal Profile/Personal Brand.md"
touch "$BASE_DIR/1. Personal Profile/Personality Assessment/Strengths & Weaknesses.md"
touch "$BASE_DIR/1. Personal Profile/Personality Assessment/Communication Style.md"
touch "$BASE_DIR/1. Personal Profile/Cultural Background.md"
touch "$BASE_DIR/1. Personal Profile/Languages.md"

# 2. Vision & Goals
mkdir -p "$BASE_DIR/2. Vision & Goals/Goals"
mkdir -p "$BASE_DIR/2. Vision & Goals/Action Plans"
mkdir -p "$BASE_DIR/2. Vision & Goals/Progress Tracking"
touch "$BASE_DIR/2. Vision & Goals/Life Vision.md"
touch "$BASE_DIR/2. Vision & Goals/Goals/Current Goals.md"
touch "$BASE_DIR/2. Vision & Goals/Goals/Completed Goals.md"
touch "$BASE_DIR/2. Vision & Goals/Goals/Future Aspirations.md"
touch "$BASE_DIR/2. Vision & Goals/Action Plans/90-Day Plans.md"
touch "$BASE_DIR/2. Vision & Goals/Action Plans/Annual Goals.md"
touch "$BASE_DIR/2. Vision & Goals/Action Plans/5-Year Vision.md"
touch "$BASE_DIR/2. Vision & Goals/Progress Tracking/Monthly Reviews.md"
touch "$BASE_DIR/2. Vision & Goals/Progress Tracking/Quarterly Assessments.md"
touch "$BASE_DIR/2. Vision & Goals/Progress Tracking/Annual Reflections.md"

# 3. Education & Learning
mkdir -p "$BASE_DIR/3. Education & Learning/Formal Education"
mkdir -p "$BASE_DIR/3. Education & Learning/Self-Learning"
mkdir -p "$BASE_DIR/3. Education & Learning/Skills Development"
touch "$BASE_DIR/3. Education & Learning/Formal Education/Degrees.md"
touch "$BASE_DIR/3. Education & Learning/Formal Education/Certifications.md"
touch "$BASE_DIR/3. Education & Learning/Self-Learning/Online Courses.md"
touch "$BASE_DIR/3. Education & Learning/Self-Learning/Reading List.md"
touch "$BASE_DIR/3. Education & Learning/Skills Development/Technical Skills.md"
touch "$BASE_DIR/3. Education & Learning/Skills Development/Soft Skills.md"

# 4. Professional Journey
mkdir -p "$BASE_DIR/4. Professional Journey/Career History"
mkdir -p "$BASE_DIR/4. Professional Journey/Projects Portfolio"
touch "$BASE_DIR/4. Professional Journey/Career History/Resume.md"
touch "$BASE_DIR/4. Professional Journey/Career History/Work Experience.md"
touch "$BASE_DIR/4. Professional Journey/Projects Portfolio/Current Projects.md"
touch "$BASE_DIR/4. Professional Journey/Projects Portfolio/Past Projects.md"

# 5. Creative Expression
mkdir -p "$BASE_DIR/5. Creative Expression/Art & Design"
mkdir -p "$BASE_DIR/5. Creative Expression/Writing"
mkdir -p "$BASE_DIR/5. Creative Expression/Media Creation"

# 6. Interests & Passions
mkdir -p "$BASE_DIR/6. Interests & Passions/Hobbies"
mkdir -p "$BASE_DIR/6. Interests & Passions/Entertainment"
mkdir -p "$BASE_DIR/6. Interests & Passions/Travel"
touch "$BASE_DIR/6. Interests & Passions/Entertainment/Books.md"
touch "$BASE_DIR/6. Interests & Passions/Entertainment/Movies & Shows.md"
touch "$BASE_DIR/6. Interests & Passions/Entertainment/Music.md"
touch "$BASE_DIR/6. Interests & Passions/Travel/Places Visited.md"
touch "$BASE_DIR/6. Interests & Passions/Travel/Travel Wishlist.md"

# 7. Relationships & Network
mkdir -p "$BASE_DIR/7. Relationships & Network/Personal Network"
mkdir -p "$BASE_DIR/7. Relationships & Network/Professional Network"
mkdir -p "$BASE_DIR/7. Relationships & Network/Community Involvement"

# 8. Health & Wellness
mkdir -p "$BASE_DIR/8. Health & Wellness/Physical Health"
mkdir -p "$BASE_DIR/8. Health & Wellness/Mental Health"
mkdir -p "$BASE_DIR/8. Health & Wellness/Lifestyle"

# 9. Digital Presence
mkdir -p "$BASE_DIR/9. Digital Presence/Social Media"
mkdir -p "$BASE_DIR/9. Digital Presence/Online Portfolio"
touch "$BASE_DIR/9. Digital Presence/Online Portfolio/GitHub Projects.md"
touch "$BASE_DIR/9. Digital Presence/Online Portfolio/Personal Website.md"

# 10. Personal Documentation
mkdir -p "$BASE_DIR/10. Personal Documentation/Journal"
mkdir -p "$BASE_DIR/10. Personal Documentation/Life Events"
mkdir -p "$BASE_DIR/10. Personal Documentation/Archives"
touch "$BASE_DIR/10. Personal Documentation/Journal/Daily Logs.md"
touch "$BASE_DIR/10. Personal Documentation/Journal/Weekly Reviews.md"
touch "$BASE_DIR/10. Personal Documentation/Journal/Monthly Reflections.md"

# 11. Ideas & Innovation
mkdir -p "$BASE_DIR/11. Ideas & Innovation/Brainstorming"
mkdir -p "$BASE_DIR/11. Ideas & Innovation/Research Interests"
mkdir -p "$BASE_DIR/11. Ideas & Innovation/Innovation Journal"

# 12. Future Planning
mkdir -p "$BASE_DIR/12. Future Planning/Personal Development"
mkdir -p "$BASE_DIR/12. Future Planning/Life Planning"
mkdir -p "$BASE_DIR/12. Future Planning/Strategic Thinking"
touch "$BASE_DIR/12. Future Planning/Life Planning/Bucket List.md"
touch "$BASE_DIR/12. Future Planning/Life Planning/Dreams & Aspirations.md"

echo "¡Estructura de carpetas creada exitosamente en tu vault de Obsidian!"
echo "Ubicación: $BASE_DIR"