TARGET = parser
OBJECT = parser.tab.c parser.tab.o lex.yy.c 
CC = gcc
LEX = flex
YACC = bison -v
YACCFLAG = 
LIBS = -lfl 

parser: parser.tab.o	
	$(CC) -o $(TARGET) parser.tab.o $(LIBS)

parser.tab.o: parser.tab.c lex.yy.c
	$(CC) -c parser.tab.c

lex.yy.c: lexer3.l
	$(LEX) lexer3.l

parser.tab.c: parser.y 
	$(YACC) $(YACCFLAG) parser.y

clean:
	rm -f $(TARGET) $(OBJECT) 

