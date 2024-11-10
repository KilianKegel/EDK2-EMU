/*++

    The C Book

    https://publications.gbdirect.co.uk/c_book/copyright.html

Module Name:

    Example 10.1

Abstract:

     Arguments to main -- sample program.
     https://publications.gbdirect.co.uk/c_book/chapter10/arguments_to_main.html

Author:

    Mark Doran
    Mike Banahan
    Declan Brady

--*/
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
	while (argc--) {
		printf("%s\n", *argv++);
	}
	exit(EXIT_SUCCESS);
}