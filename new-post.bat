@echo off
if "%~1"=="" (echo Usage: new-post.bat post-name.md & exit /b)
hugo new content/posts/%~1.md
setx HUGO_LAST_POST "posts/%~1"
echo Post created: content/posts/%~1.md

echo Post name saved to HUGO_LAST_POST env variable.