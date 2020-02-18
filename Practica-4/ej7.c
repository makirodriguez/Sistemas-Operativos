#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>

int main(){

	pid_t pid;
	if((pid=fork())==0){
		printf("Soy el hijo\n");
	}
	else{
		printf("Soy el padre\n");
	}





}
