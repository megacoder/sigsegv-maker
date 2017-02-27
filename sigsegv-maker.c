#include <unistd.h>
#include <stdio.h>

int
main(
	int		argc,
	char * *	argv
)
{
	char *		ptr = (char *) 1;
	*ptr = 1;
	return( 1 );
}
