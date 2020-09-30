#include "libasm.h"

int main()
{
    char *str = "this string is 22 char";

    int strlen = ft_strlen(str);
    printf("strlen - %s - %i\n", str, strlen);

    char strcpy[50];
    char *strcpy1;
    strcpy1 = ft_strcpy(strcpy, "strcpy is OK");
    printf("strcpy - %s\n", strcpy1);

    char *str1 = "this string is not";
    char *str2 = "this string is not";
    int strcm = 0;
    int strcm1 = 0;
    strcm = ft_strcmp(str, str1);
    strcm1 = ft_strcmp(str1, str2);
    printf("strcmp - -60 %i 0 %i\n", strcm, strcm1);

    int fd = open("text.txt", O_WRONLY);
    ft_write(fd, "read is OK\n", 11);
    ft_write(1, "write - write is OK\n", 11);

    fd = open("text.txt", O_RDONLY);
    char buff[12];
    ft_read(fd, buff, 11);
    printf("read - %s", buff);

    char *strd = ft_strdup("strdup is OK");
    printf("strdup - %s\n", strd);
}