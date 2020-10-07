#include <stdio.h>
#include <stdlib.h>


#ifdef __linux__
#include <editline/readline.h>
#include <editline/history.h>
#else 
printf("This lisp interpreter doesn't run on your platform");
exit(EXIT_FAILURE);
#endif 

int main(int argc, char** argv) {


	puts("Lisp Interpreter Version 1.0.0");
	puts("Press CTRL + C to Exit \n");

	/* repl */
	while (1) {

		char* input = readline("Interpreter> ");

		/*Add history */
		add_history(input);

		printf("%s\n", input);

		//fputs("YourName> ", stdout);
		//fgets(input, 1024, stdin);

		printf("Interpreter> %s", input);
		free(input);
	}

	return 0;
}
