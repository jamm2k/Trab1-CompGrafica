# Compilador e flags
CC = C:\msys64\ucrt64\bin\gcc.exe
CFLAGS = -Wall -I"C:\msys64\ucrt64\include"
LIBS = -L"C:\msys64\ucrt64\lib" -lfreeglut -lglu32 -lopengl32 -lm

# Arquivos
SRC = basicGlutGlCurvaFechadaTransformaTrab2026.c
TARGET = programa.exe

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

run: $(TARGET)
	.\$(TARGET)

clean:
	del /f /q $(TARGET)

.PHONY: all run clean