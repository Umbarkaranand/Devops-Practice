@echo off

echo Starting Build Process

:: Navigate to the source directory if Main.java is inside src folder
cd src

:: Compile the Java code
javac Main.java

:: Check if the compilation succeeded
if %errorlevel% == 0 (
    echo Compilation successful, running the program...
    :: Run the compiled program
    java Main
) else (
    echo Compilation failed!
    exit /b 1
)
