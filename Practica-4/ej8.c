#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main(){


	pid_t pid;
	if((pid=fork())==0){
		printf("Soy el hijo %d y mi padre es %d\n", getpid(), getppid());
	}
	else{
		printf("Soy el padre %d y mi padre es %d\n", getpid(), getppid());
	}


}
