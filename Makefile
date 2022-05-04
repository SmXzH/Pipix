# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: szhakypo <szhakypo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/05 02:56:00 by szhakypo          #+#    #+#              #
#    Updated: 2022/05/05 03:00:37 by szhakypo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = pipex

CC = gcc

CFLAGS = -Wall -Wextra -Werror

HEADER = pipex.h

SRC = pipex.c pipex-utils.c

OBJ = $(SRC:c=o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJB)

fclean:
	rm -f $(OBJ) $(OBJB)
	rm -f $(NAME)

re: fclean all

bonus: $(OBJB)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJB)

.PHONY: clean fclean re bonus