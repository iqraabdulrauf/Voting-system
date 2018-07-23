#include<stdio.h>
#include<conio.h>
void get_input();
void drawboard();
	int ch;
	char c;
char board[3][3]={'1','2','3','4','5','6','7','8','9'};
char player1[20],player2[20];
int count=0;
void drawboard(){

  int i,j;
  for(i=0;i<3;i++){
    printf("\t|");
    for(j=0;j<3;j++){
        printf(" %c |",board[i][j]);

    }
    printf("\n\t|---|---|---|\n");
  }
}
char checkwin(){
if(board[0][0]=='X'&& board[1][1]=='X'&& board[2][2]=='X')//1st diagonal
    return 'X';
if(board[0][2]=='X'&& board[1][1]=='X'&& board[2][0]=='X')//2nd diagonal
    return 'X';
if(board[0][0]=='X'&& board[1][0]=='X'&& board[2][0]=='X')//1st col
     return 'X';
if(board[0][1]=='X'&& board[1][1]=='X'&& board[2][1]=='X')//2nd col
     return 'X';
if(board[0][1]=='X'&& board[1][1]=='X'&& board[2][1]=='X')//3rd col
     return 'X';
if(board[0][0]=='X'&& board[0][1]=='X'&& board[0][2]=='X')//1st row
     return 'X';
if(board[1][0]=='X'&& board[1][1]=='X'&& board[1][2]=='X')//2nd row
     return 'X';
if(board[2][0]=='X'&& board[2][1]=='X'&& board[2][2]=='X')//3rd row
     return 'X';
else if(board[0][0]=='O'&& board[1][1]=='O'&& board[2][2]=='O')//1st diagonal
    return 'O';
else if(board[0][2]=='O'&& board[1][1]=='O'&& board[2][0]=='O')//2nd diagonal
    return 'O';
else if(board[0][0]=='O'&& board[1][0]=='O'&& board[2][0]=='O')//1st col
     return 'O';
else if(board[0][1]=='O'&& board[1][1]=='O'&& board[2][1]=='O')//2nd col
     return 'O';
else if(board[0][1]=='O'&& board[1][1]=='O'&& board[2][1]=='O')//3rd col
     return 'O';
else if(board[0][0]=='O'&& board[0][1]=='O'&& board[0][2]=='O')//1st row
     return 'O';
else if(board[1][0]=='O'&& board[1][1]=='O'&& board[1][2]=='O')//2nd row
     return 'O';
else if(board[2][0]=='O'&& board[2][1]=='O'&& board[2][2]=='O')//3rd row
     return 'O';
else
    return '/';
}
void get_input(){
    int i,j;
    char n,a;
  do{
//  	if(count>1)
//         {
		 printf("\n\n\nTurn for %s....\n",player1);
		 scanf("%c",&n);
         count++;
         fflush(stdin);
        for(i=0;i<3;i++){
             for(j=0;j<3;j++){
                  if(n==board[i][j]){
                        if(count%2==0)
                            board[i][j]='O';
                      else
                        board[i][j]='X';
                 }
        }

  }
  
 // if(count>1){
  drawboard();
  //}
  a=checkwin();
  if(a=='X'){
      printf("\n\nCongratulation %s.You won",player1);
      count=0;
      break;
  }
  else if(a=='/' && count==9){
      printf("\n\nMatch Draw!!!!!");

      count=0;
      break;
          }
   printf("\n\n\nTurn for %s....\n",player2);
   count++;
   scanf("%c",&n);
   fflush(stdin);
        for(i=0;i<3;i++){
             for(j=0;j<3;j++){
                  if(n==board[i][j]){
                        if(count%2==0)
                            board[i][j]='O';
                   else
                        board[i][j]='X';
                 }
        }

  }
 
  drawboard();
  a=checkwin();
  if(a=='O'){
      printf("\n\nCongratulation %s.You won",player2);
      break;


   }
}while(count<10);
}
int main()
{

	printf("1: Start game");
	printf("\n2: Quit ");
	printf("\nEnter your choice: ");
	scanf("%d",&ch);
	switch(ch)
	{
		case 1:
		 {
		 printf("\nWho will play for 'X'\n");
              scanf("%s",player1);
              printf("\nWelcome %s your sign is X",player1);
              printf("\n\nWho will play for 'O'\n");
               scanf("%s",&player2);
              printf("\nWelcome %s your sign is O\n",player2);
    
              drawboard();
              get_input();
              printf("\n\tGAME OVER\n\n");
	      break ;
	      }
     case 2 :{
           
             printf("\nAre you sure you want to exit?y/n");
             scanf("%s",&c);
            break;
	      }
	      
	      
	      
	}
	
}

