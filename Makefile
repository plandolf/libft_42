# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plandolf <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/03 12:42:38 by plandolf          #+#    #+#              #
#    Updated: 2023/05/03 12:42:43 by plandolf         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

FILES := ft_atoi.c ft_isalpha.c ft_isprint.c ft_memset.c ft_strlen.c ft_bzero.c \
ft_isascii.c ft_memcpy.c ft_strlcat.c ft_tolower.c ft_isalnum.c ft_isdigit.c \
ft_memmove.c ft_strlcpy.c ft_toupper.c ft_strchr.c ft_strrchr.c ft_memchr.c \
ft_memcmp.c ft_strnstr.c ft_strncmp.c ft_calloc.c ft_strdup.c ft_substr.c \
ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c 

BONUS_FILES := ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS := $(FILES:.c=.o)

OBJS_BONUS := $(BONUS_FILES:.c=.o)

CFLAGS = -Wall -Wextra -Werror

all:$(NAME)

$(NAME):$(OBJS)
	ar -rcs $@ $^

bonus :$(OBJS_BONUS) $(OBJS)
	ar -rcs $(NAME) $(OBJS_BONUS) $(OBJS)

clean:
	rm -f *.o

fclean:clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
