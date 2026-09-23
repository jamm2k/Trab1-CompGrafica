# Compilador e flags
CC = gcc
CFLAGS = -Wall
LIBS = -lglut -lGLU -lGL -lm

# Arquivos
SRC = basicGlutGlCurvaFechadaTransformaTrab2026.c
TARGET = programa

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
