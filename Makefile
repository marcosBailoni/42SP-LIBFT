# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maralves <maralves@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/25 15:28:39 by maralves          #+#    #+#              #
#    Updated: 2025/08/04 16:51:49 by maralves         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_memchr.c \
      ft_strchr.c \
      ft_strrchr.c \
      ft_atoi.c \
      ft_memcmp.c \
      ft_strdup.c \
      ft_strtrim.c \
      ft_bzero.c \
      ft_memcpy.c \
      ft_striteri.c \
      ft_substr.c \
      ft_calloc.c \
      ft_memmove.c \
      ft_strjoin.c \
      ft_tolower.c \
      ft_isalnum.c \
      ft_memset.c \
      ft_strlcat.c \
      ft_toupper.c \
      ft_isalpha.c \
      ft_putchar_fd.c \
      ft_strlcpy.c \
      ft_isdigit.c \
      ft_putnbr_fd.c \
      ft_strmapi.c \
      ft_isprint.c \
      ft_putstr_fd.c \
      ft_strncmp.c \
      ft_itoa.c \
      ft_split.c \
      ft_strnstr.c\
	ft_isascii.c\
	ft_strlen.c\
      ft_putendl_fd.c

OBJ = $(SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all