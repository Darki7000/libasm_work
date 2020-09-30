#ifndef LIBASM_H
#define LIBASM_H

#include <stdio.h>
#include <string.h>
#include <fcntl.h>

size_t	ft_strlen(char *str);
char    *ft_strcpy(char *destptr, const char *srcptr);
int     ft_strcmp(const char *str1, const char *str2 );
int     ft_write(int handle, void *buf, int count);
int     ft_read(int fd, void *buf, unsigned count);
char    *ft_strdup(const char *str);
#endif