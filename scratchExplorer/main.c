#include <curses.h>
#include <stdio.h>
#include <stdlib.h>
#include "main.h"

int main(int argc, char const *argv[])
{
	
	while(gameAlive){
		drawScreen();
		waitForInput();
		clearScreen();
	}

	return 0;
}

