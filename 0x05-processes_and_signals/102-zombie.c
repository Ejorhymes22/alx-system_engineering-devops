#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * infinite_while - runs infiniteyl
 *
 * Return: 0
 */

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - produces zumbies
 *
 * Return: 0
 */

int main(void)
{
	int i = 5;
	pid_t child;

	while (i)
	{
		child = fork();
		if (!child)
			return (0);
		printf("Zombie process created, PID: %d\n", child);
		i--;
	}

	infinite_while();
	return (0);
}
