# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ataguiro <ataguiro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/15 14:57:28 by ataguiro          #+#    #+#              #
#    Updated: 2017/02/26 17:56:49 by ataguiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ===== Editable =====
NAME	:=	libftprintf.a
INDEX	:=	1
# ====================

# ===== Standard =====
CC		:=	clang -pipe
CFLAGS	:=	-Wall -Wextra -Werror -g3
SRCDIR	:=	src/
OBJDIR	:=	obj/
INCDIR	:=	include/
LIBDIR	:=	libft/
SRC		:=	$(SRCDIR)ft_printf.c \
			$(SRCDIR)parsing.c \
			$(SRCDIR)types.c \
			$(SRCDIR)sin/sin_printf.c \
			$(SRCDIR)tools/tl_focuscpy.c \
			$(SRCDIR)tools/tl_isinstr.c \
			$(SRCDIR)tools/tl_ntoa.c \
			$(SRCDIR)tools/tl_ntoa_8.c \
			$(SRCDIR)tools/tl_ntoa_16.c \
			$(SRCDIR)tools/tl_ntoa_2.c \
			$(SRCDIR)tools/tl_ntoa_u.c \
			$(SRCDIR)tools/tl_strnlen.c \
			$(SRCDIR)tools/tl_wstrnlen.c \
			$(SRCDIR)types/type_c.c \
			$(SRCDIR)types/type_o.c \
			$(SRCDIR)types/type_p.c \
			$(SRCDIR)types/type_cup.c \
			$(SRCDIR)types/type_s.c \
			$(SRCDIR)types/type_sup.c \
			$(SRCDIR)types/type_u.c \
			$(SRCDIR)types/type_x.c \
			$(SRCDIR)types/type_d.c \
			$(SRCDIR)types/type_b.c \
			$(SRCDIR)types/wchar/fill_wchar_c.c \
			$(SRCDIR)types/wchar/fill_wchar_s.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_itabremove.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)btree_del.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_ctoa.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_foreach.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_getlast.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstpushback.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_rand.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_range.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strrev.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_swap.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_swap_str.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tabdup.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tabremove.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tabstr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tolower.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_toupper.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isdigit.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memdel.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strclr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strnew.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isprint.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memmove.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strcmp.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strnstr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isspace.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memset.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strcpy.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strrchr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)btree_create_node.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_intlength.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strdel.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)btree_insert_data.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strsplit.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putchar.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strdup.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strstr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putchar_fd.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strequ.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strsub.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putendl.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strtrim.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_atoi.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstadd.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_striter.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putendl_fd.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_striteri.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_bzero.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putnbr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strjoin.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tabdel.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstdelone.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tablen.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstiter.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putnbr_fd.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strlcat.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstsize.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putstr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strlen.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstmap.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strmap.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_tolower.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_lstnew.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_putstr_fd.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strmapi.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_toupper.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memalloc.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strncat.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memccpy.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strncmp.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isalnum.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memchr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strcat.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strncpy.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)get_next_line.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isalpha.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memcmp.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_isascii.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_memcpy.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strchr.c \
			$(SRCDIR)$(LIBDIR)$(SRCDIR)ft_strnequ.c

OBJ		:=	$(SRC:$(SRCDIR)%.c=$(OBJDIR)%.o)
INC		:=	-I./$(INCDIR) -I./$(SRCDIR)$(LIBDIR)$(INCDIR)
CACHEF	:=	.cache_exists
# ====================

# ====== Colors ======
CLEAR		= "\033[2K"
UP			= "\033[A"
EOC			= "\033[0;0m"
BLACK		= "\033[0;30m"
RED			= "\033[0;31m"
BRED		= "\033[1;31m"
GREEN		= "\033[0;32m"
BGREEN		= "\033[1;32m"
YELLOW		= "\033[0;33m"
BLUE		= "\033[0;34m"
PURPLE		= "\033[0;35m"
CYAN		= "\033[0;36m"
WHITE		= "\033[0;37m"
# ====================

.PHONY: all libft norme clean fclean re
.SILENT:

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $(OBJ)
	ranlib $@
	echo $(BGREEN)"\n✓ $@ ok ;)"$(EOC)

$(OBJDIR)%.o: $(SRCDIR)%.c $(CACHEF)
	$(CC) $(CFLAGS) -c $< -o $@ $(INC)
	printf "\r"
	printf $(BGREEN)"[ compiling $(NAME)... ] "
	printf "$(shell echo 'scale=2;$(INDEX)/103 * 100' | bc)%% "$(EOC)
	printf $(PURPLE)"[=> %s <=]"$(EOC) $@
	printf "\033[K"
	$(eval INDEX=$(shell echo $$(($(INDEX)+1))))

$(CACHEF):
	test -d $(OBJDIR) || mkdir $(OBJDIR)
	test -d $(OBJDIR)sin || mkdir $(OBJDIR)sin
	test -d $(OBJDIR)types || mkdir $(OBJDIR)types
	test -d $(OBJDIR)types/wchar || mkdir $(OBJDIR)types/wchar
	test -d $(OBJDIR)tools || mkdir $(OBJDIR)tools
	test -d $(OBJDIR)libft || mkdir $(OBJDIR)libft
	test -d $(OBJDIR)libft/src || mkdir $(OBJDIR)libft/src
	test -d $(CACHEF) || touch $(CACHEF)

%.c:
	printf $(RED)"Missing file : $@\n"$(EOC)

norme:
	norminette $(SRCDIR) $(INCDIR) | grep -v Norme -B1 || true
	norminette $(LIBFT)$(SRCDIR) $(LIBFT)$(INCDIR) | grep -v Norme -B1 || true

clean:
	rm -rf $(OBJDIR) $(CACHEF)
	printf $(YELLOW)"All objects removed\n"$(EOC)

fclean: clean
	rm -f $(NAME)
	printf $(RED)"$(NAME) removed\n"$(EOC)

re: fclean all
