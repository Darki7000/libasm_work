# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmaida <mmaida@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/01 16:47:35 by mmaida            #+#    #+#              #
#    Updated: 2020/10/01 16:47:38 by mmaida           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

MAIN = main.c

OBJ = $(SRC:.s=.o)

%.o : %.s
		nasm -f macho64 $< -o $@

all: $(NAME)

$(NAME): $(OBJ) $(MAIN)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)
		gcc	-Wall -Wextra -Werror $(MAIN) -L. -lasm -o libasm

clean:
		rm -f *.o

fclean: clean
		rm -f $(NAME)
		rm -f libasm

re: fclean all

.PHONY: all re clean fclean 