NAME = libasm.a

SRC = ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

MAIN = main.c

OBJ = $(SRC:.s=.o)

all: $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)
		gcc	-Wall -Wextra -Werror $(MAIN) -L. -lasm -o libasm

$(OBJ): $(SRC)
		nasm -f macho64 ft_read.s
		nasm -f macho64 ft_strcmp.s
		nasm -f macho64 ft_strcpy.s
		nasm -f macho64 ft_strdup.s
		nasm -f macho64 ft_strlen.s
		nasm -f macho64 ft_write.s

clean:
		rm -f *.o

fclean: clean
		rm -f $(NAME)
		rm -f libasm

re: fclean all
