/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmaida <mmaida@student.21-school.ru>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/01 16:47:46 by mmaida            #+#    #+#             */
/*   Updated: 2020/10/01 16:47:54 by mmaida           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
	char *str = "this string is 22 char";
	printf("\nstrlen - %s - %i\n", str, (int)ft_strlen(str));
	printf("empty str - %i\n", (int)ft_strlen(""));

	printf("\n");

	char strcpy[50];
	char *strcpy1;
	strcpy1 = ft_strcpy(strcpy, "OK");
	printf("strcpy - %s\n", strcpy1);

	printf("\n");

	char *str1 = "this string is not";
	char *str2 = "this string is not";
	int strcm = 0;
	int strcm1 = 0;
	strcm = ft_strcmp(str, str1);
	strcm1 = ft_strcmp(str1, str2);
	printf("strcmp - -60 %i 0 %i\n", strcm, strcm1);

	printf("\n");

	int fd = open("text.txt", O_WRONLY);
	perror("");
	ft_write(fd, "read - OK", 9);
	ft_write(1, "write - OK\n", 11);
	ft_write(67, "write - OK\n", 11);
	perror("");
	close(fd);

	printf("\n");

	fd = open("text.txt", O_RDONLY);
	char buff[12];
	int i = ft_read(fd, buff, 11);
	int i1 = ft_read(42, buff, 11);
	printf("%s - %i\nerror - %i\n", buff, i, i1);

	printf("\n");

	char *strd = ft_strdup("OK");
	printf("strdup - %s\n", strd);
}