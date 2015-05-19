#include <curses.h>
#include <stdio.h>
//#include <stdio.h>
#include <stdlib.h>


bool gameAlive = true;
int pposX = 2;
int pposY = 2;
char input;


void gotoxy(int x,int y){
	printf("%c[%d;%df",0x1B,y,x);
}

void drawScreen (){

	int i = 0;
	while(i<20){
		gotoxy(0,i);
		printf("*");
		
		i++;
	}
	
	i = 0;
	while(i<20){
		gotoxy(i,0);
		printf("*");
		
		i++;
	}
	
	i = 0;
	while(i<20){
		gotoxy(20,i);
		printf("*");
		
		i++;
	}
	
	i = 0;
	while(i<20){
		gotoxy(i,20);
		printf("*");
		
		i++;
	}

	gotoxy(pposX, pposY);
	printf("@");

}

void waitForInput (){

	
	input = getc(stdin);
	//scanf("%c", &input);

	switch(input){
		case 'w':
			if (pposY >= 1 && pposY <= 20){
				pposY--;
			}else{}
			break;
		case 'a':
			if (pposX >= 1 && pposX <= 20){
				pposX--;
			}else{}
			break;
		case 's':
			if (pposY >= 1 && pposY <= 20){
			pposY++;
			}else{}
			break;
		case 'd':
			if (pposX >= 1 && pposX <= 20){
			pposX++;
			}else{}
			break;
			
	}

	
}

void clearScreen (){
	system("clear");
}
