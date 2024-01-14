#include <stdio.h> 

int main() 
{ 
	int l = 13; 
	printf("x: %d\n", l); 
	printf("x: %b\n", l); 
	printf("13 | (1 << 5)\n");
	printf("Ans: %d\n", 13 | (1 << 5));
	printf("Ans: %b\n", 13 | (1 << 5));
	printf("13 & ~(1 << 2) \n");
	printf("Ans: %d\n", 13 & ~(1 << 2) );
	printf("Ans: %b\n", 13 & ~(1 << 2) );
	printf("13 ^ (1 << 3) \n");
	printf("Ans: %d\n", 13 ^ (1 << 3) );
	printf("Ans: %b\n", 13 ^ (1 << 3) );
	printf("13 & (1 << 3) \n");
	printf("Ans: %d \n", 13 & (1 << 3) );
	printf("Ans: %b \n", 13 & (1 << 3) );
        printf("13 & (1 << 4) \n");
        printf("Ans: %d \n", 13 & (1 << 4) );
        printf("Ans: %b \n", 13 & (1 << 4) );

	int x = 0b00000000; 
	int y = 0b11110000; 
	int z = 0b01000000; 

	printf("x: %b\n", x | y); 
	printf("Ans: %b\n", x | (1 << 5)); 

	return 0; 
}

