NAME = so_long

CC = cc

CFLAGS = -Wall -Wextra -Werror

MLXFLAGS = -I./minilibx-linux -L./minilibx-linux -lmlx -lXext -lX11 -lm

SRCS = srcs/ft_printf/ft_printf.c srcs/ft_printf/ft_putchar.c srcs/ft_printf/ft_putstr.c srcs/ft_printf/ft_putnbr.c srcs/ft_printf/ft_putnbr_unsigned.c \
	   srcs/ft_printf/ft_puthex.c srcs/ft_printf/ft_puthexa.c srcs/libft/ft_atoi.c srcs/libft/ft_bzero.c srcs/libft/ft_calloc.c srcs/libft/ft_isalnum.c \
	   srcs/libft/ft_isalpha.c srcs/libft/ft_isascii.c srcs/libft/ft_isdigit.c srcs/libft/ft_isprint.c srcs/libft/ft_itoa.c srcs/libft/ft_memchr.c \
	   srcs/libft/ft_memcmp.c srcs/libft/ft_memcpy.c srcs/libft/ft_memmove.c srcs/libft/ft_memset.c srcs/libft/ft_putchar_fd.c srcs/libft/ft_putendl_fd.c \
	   srcs/libft/ft_putnbr_fd.c srcs/libft/ft_putstr_fd.c srcs/libft/ft_split.c srcs/libft/ft_strchr.c srcs/libft/ft_strdup.c srcs/libft/ft_striteri.c\
	   srcs/libft/ft_strjoin.c srcs/libft/ft_strlcat.c srcs/libft/ft_strlcpy.c srcs/libft/ft_strlen.c srcs/libft/ft_strmapi.c srcs/libft/ft_strncmp.c \
	   srcs/libft/ft_strnstr.c srcs/libft/ft_strrchr.c srcs/libft/ft_strtrim.c srcs/libft/ft_substr.c srcs/libft/ft_tolower.c srcs/libft/ft_toupper.c \
	   srcs/libft/ft_lstnew_bonus.c srcs/libft/ft_lstadd_front_bonus.c srcs/libft/ft_lstsize_bonus.c srcs/libft/ft_lstlast_bonus.c \
	   srcs/libft/ft_lstadd_back_bonus.c srcs/libft/ft_lstdelone_bonus.c srcs/libft/ft_lstclear_bonus.c srcs/libft/ft_lstiter_bonus.c srcs/libft/ft_lstmap_bonus.c \
	   srcs/check_map.c srcs/collisions.c srcs/create.c srcs/worms.c srcs/utils.c srcs/main2.c

SRCSBONUS = srcs_bonus/ft_printf/ft_printf.c srcs_bonus/ft_printf/ft_putchar.c srcs_bonus/ft_printf/ft_putstr.c srcs_bonus/ft_printf/ft_putnbr.c srcs_bonus/ft_printf/ft_putnbr_unsigned.c \
	   srcs_bonus/ft_printf/ft_puthex.c srcs_bonus/ft_printf/ft_puthexa.c srcs_bonus/libft/ft_atoi.c srcs_bonus/libft/ft_bzero.c srcs_bonus/libft/ft_calloc.c srcs_bonus/libft/ft_isalnum.c \
	   srcs_bonus/libft/ft_isalpha.c srcs_bonus/libft/ft_isascii.c srcs_bonus/libft/ft_isdigit.c srcs_bonus/libft/ft_isprint.c srcs_bonus/libft/ft_itoa.c srcs_bonus/libft/ft_memchr.c \
	   srcs_bonus/libft/ft_memcmp.c srcs_bonus/libft/ft_memcpy.c srcs_bonus/libft/ft_memmove.c srcs_bonus/libft/ft_memset.c srcs_bonus/libft/ft_putchar_fd.c srcs_bonus/libft/ft_putendl_fd.c \
	   srcs_bonus/libft/ft_putnbr_fd.c srcs_bonus/libft/ft_putstr_fd.c srcs_bonus/libft/ft_split.c srcs_bonus/libft/ft_strchr.c srcs_bonus/libft/ft_strdup.c srcs_bonus/libft/ft_striteri.c\
	   srcs_bonus/libft/ft_strjoin.c srcs_bonus/libft/ft_strlcat.c srcs_bonus/libft/ft_strlcpy.c srcs_bonus/libft/ft_strlen.c srcs_bonus/libft/ft_strmapi.c srcs_bonus/libft/ft_strncmp.c \
	   srcs_bonus/libft/ft_strnstr.c srcs_bonus/libft/ft_strrchr.c srcs_bonus/libft/ft_strtrim.c srcs_bonus/libft/ft_substr.c srcs_bonus/libft/ft_tolower.c srcs_bonus/libft/ft_toupper.c \
	   srcs_bonus/libft/ft_lstnew_bonus.c srcs_bonus/libft/ft_lstadd_front_bonus.c srcs_bonus/libft/ft_lstsize_bonus.c srcs_bonus/libft/ft_lstlast_bonus.c \
	   srcs_bonus/libft/ft_lstadd_back_bonus.c srcs_bonus/libft/ft_lstdelone_bonus.c srcs_bonus/libft/ft_lstclear_bonus.c srcs_bonus/libft/ft_lstiter_bonus.c srcs_bonus/libft/ft_lstmap_bonus.c \
	   srcs_bonus/check_map.c srcs_bonus/collisions.c srcs_bonus/create.c srcs_bonus/worms.c srcs_bonus/foxes.c srcs_bonus/utils.c srcs_bonus/main.c

OBJS = $(SRCS:.c=.o)

OBJSBONUS = $(SRCSBONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS) $(MLXFLAGS)

bonus: $(OBJSBONUS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJSBONUS) $(MLXFLAGS)

clean:
	$(RM) $(OBJS) $(OBJSBONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re