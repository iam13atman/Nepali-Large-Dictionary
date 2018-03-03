config-reader: config_reader.l config_reader.y main_func.c
	bison -d config_reader.y
	flex config_reader.l
	cc -o $@ config_reader.tab.c lex.yy.c main_func.c -lfl -g

clean: config-reader
	rm config-reader
