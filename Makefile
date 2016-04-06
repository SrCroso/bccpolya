CC=gcc
CFLAGS=-W -Wall -pedantic -std=c11
LFLAGS=-lm

SRC=$(wildcard *.c)
BIN=$(SRC:.c=)

.PHONY: all clean help

help:
	@echo "Sintaxe: make <opções>"
	@echo "	Opções:"
	@echo "		help : mostra esta mensagem"
	@echo "		all: Compila todos os códigos fonte da pasta"
	@echo "		clean: apaga todos os binários criados"
	@echo ""

all: $(BIN)

clean:
	@rm -f $(BIN)

%:%.c
	@echo -n "Gerando executável $@"
	@$(CC) $< -o $@ $(CFLAGS) $(LFLAGS) && echo " [OK]"
