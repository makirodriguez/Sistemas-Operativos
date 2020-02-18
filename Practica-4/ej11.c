#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>


int main(){

	pid_t pid;
	if((pid=fork())==0){
		printf("Soy el proceso hijo y mi PID es %d y el de mi padre es %d\n", getpid(), getppid());
		system("ls -la");
	}
	else{
		printf("Soy el proceso padre y mi PID es %d y mi padre es %d\n", getpid(), getppid());
		system("mkdir MisDocumentos");
		system("touch procesos ./MisDocumentos");
	}




}
