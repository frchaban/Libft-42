# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frchaban <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/03 18:24:04 by frchaban          #+#    #+#              #
#    Updated: 2020/03/18 16:43:07 by frchaban         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

OBJS = $(SRCS:.c=.o)

SRCS:= $(filter-out ft_lst%.c, $(wildcard *.c))

all : $(NAME)

$(NAME) :	$(OBJS)
			ar rcs $(NAME) $^

$(OBJS) : $(HEADERS)

%.o: %.c
			$(CC) -c $< -o $@ $(FLAGS)

bonus : 
			$(CC) $(FLAGS) -c ft_lst*.c
			ar rcs $(NAME) ft_lst*.o

clean :
			rm -f *.o

fclean : clean
			rm -f  $(NAME)

re : fclean all

.PHONY: all clean fclean re bonus
