# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmaris <gmaris@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/23 14:20:38 by gmaris            #+#    #+#              #
#    Updated: 2022/04/23 14:59:23 by gmaris           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmaris <gmaris@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/23 14:20:40 by gmaris            #+#    #+#              #
#    Updated: 2022/04/23 14:53:22 by gmaris           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS_C = -Wall -Wextra -Werror

NASME = nasm
FLAGS_ASM = -f elf64

COLLEEN_SRC		=	Colleen.c
GRACE_SRC		=	Grace.c
SULLY_SRC		=	Sully.c

COLLEEN_NAME	=	Colleen
GRACE_NAME		=	Grace
SULLY_NAME		=	Sully

OBJ_DIR = obj/
SRC_DIR = ./

COLLEEN_O	=	$(COLLEEN_SRC:.c=.o)
GRACE_O		=	$(GRACE_SRC:.c=.o)
SULLY_O		=	$(SULLY_SRC:.c=.o)

COLLEEN_OBJ	=	$(addprefix $(OBJ_DIR), $(COLLEEN_O))
GRACE_OBJ	=	$(addprefix $(OBJ_DIR), $(GRACE_O))
SULLY_OBJ	=	$(addprefix $(OBJ_DIR), $(SULLY_O))

YELLOW = \033[033m
GREEN = \033[032m
BLUE = \033[36m
RED = \033[031m
PURPLE = \033[35m
RESET = \033[0m

$(OBJ_DIR)%.o : $(SRC_DIR)%.c Makefile
	@$(CC) $(FLAGS_C) -c $< -o $@
	@echo "$(YELLOW)$(notdir $@)...$(RESET)\t\t[$(GREEN)OK$(RESET)]"

all: $(OBJ_DIR) $(COLLEEN_NAME) $(GRACE_NAME) $(SULLY_NAME)

$(COLLEEN_NAME): $(COLLEEN_OBJ)
	@echo "$(PURPLE)Sources compilation for $(COLLEEN_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]"
	@$(CC) $(FLAGS) $(COLLEEN_OBJ) -o $(COLLEEN_NAME)
	@echo "[$(GREEN)$(COLLEEN_NAME) compiled$(RESET)]\n"


$(GRACE_NAME): $(GRACE_OBJ)
	@echo "$(PURPLE)Sources compilation for $(GRACE_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]"
	@$(CC) $(FLAGS) $(GRACE_OBJ) -o $(GRACE_NAME)
	@echo "[$(GREEN)$(GRACE_NAME) compiled$(RESET)]\n"


$(SULLY_NAME): $(SULLY_OBJ)
	@echo "$(PURPLE)Sources compilation for $(SULLY_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]"
	@$(CC) $(FLAGS) $(SULLY_OBJ) -o $(SULLY_NAME)
	@echo "[$(GREEN)$(SULLY_NAME) compiled$(RESET)]"

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)
	@echo "$(BLUE)Obj directory...$(RESET)[$(GREEN)created$(RESET)]\n"

clean:
	@rm -rf $(OBJ_DIR)
	@echo "\n$(RED)Obj directory...$(RESET)[$(PURPLE)deleted$(RESET)]\n"

fclean: clean
	@rm -rf $(COLLEEN_NAME) $(GRACE_NAME) $(SULLY_NAME)
	@echo "$(RED)$(COLLEEN_NAME), $(GRACE_NAME) and $(SULLY_NAME)...$(RESET)[$(PURPLE)deleted$(RESET)]\n"

re: flcean all

.PHONY: re clean flcean all
