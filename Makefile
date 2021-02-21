# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abronn <marvin@42.f>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/13 20:57:18 by abronn            #+#    #+#              #
#    Updated: 2020/11/26 21:58:40 by abronn           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
INCLUDES = ./
FLAGS = -Wall -Werror -Wextra
CC = gcc
RM = rm -f
SRC = ft_split.c \
ft_strtrim.c \
ft_strmapi.c \
ft_itoa.c \
ft_putnbr_fd.c \
ft_putendl_fd.c \
ft_putstr_fd.c \
ft_putchar_fd.c \
ft_strjoin.c \
ft_strncmp.c \
ft_substr.c \
ft_strdup.c \
ft_calloc.c \
ft_strnstr.c \
ft_strrchr.c \
ft_strchr.c \
ft_strlcat.c \
ft_strlcpy.c \
ft_memcmp.c \
ft_memchr.c \
ft_memmove.c \
ft_memccpy.c \
ft_memcpy.c \
ft_bzero.c \
ft_atoi.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_strlen.c \
ft_tolower.c \
ft_toupper.c \
ft_memset.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

%.o:%.c
	$(CC) -c $(FLAGS) -I $(INCLUDES) $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
