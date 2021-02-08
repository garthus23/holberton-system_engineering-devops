#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}


int main ()
{
	int i;
	pid_t child_pid;

	for (i = 0; i < 4; i++)
	{
		child_pid = fork ();
		if (child_pid > 0)
		{
			printf("Zombie process created, PID: %ld\n", child_pid);
			infinite_while();
		}
		else
		{
			exit (0);
		}
	}
	return (0);
}
