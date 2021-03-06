# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmaris <gmaris@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/23 14:20:40 by gmaris            #+#    #+#              #
#    Updated: 2022/04/25 19:27:23 by gmaris           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS_C = -Wall -Wextra -Werror

NASME = nasm
FLAGS_ASM = -f elf64

COLLEEN_SRC		=	Colleen.s
GRACE_SRC		=	Grace.s
SULLY_SRC		=	Sully.s

COLLEEN_NAME	=	Colleen
GRACE_NAME		=	Grace
SULLY_NAME		=	Sully

OBJ_DIR = obj/
SRC_DIR = ./

COLLEEN_O	=	$(COLLEEN_SRC:.s=.o)
GRACE_O		=	$(GRACE_SRC:.s=.o)
SULLY_O		=	$(SULLY_SRC:.s=.o)

COLLEEN_OBJ	=	$(addprefix $(OBJ_DIR), $(COLLEEN_O))
GRACE_OBJ	=	$(addprefix $(OBJ_DIR), $(GRACE_O))
SULLY_OBJ	=	$(addprefix $(OBJ_DIR), $(SULLY_O))

YELLOW = \033[033m
GREEN = \033[032m
BLUE = \033[36m
RED = \033[031m
PURPLE = \033[35m
RESET = \033[0m

$(OBJ_DIR)%.o : $(SRC_DIR)%.s Makefile $(OBJ_DIR)
	@$(NASME) $(FLAGS_ASM) $< -o $@
	@echo "$(YELLOW)$(notdir $(basename $@))...$(RESET)\t\t[$(GREEN)OK$(RESET)]"

all: $(OBJ_DIR) $(COLLEEN_NAME) $(GRACE_NAME) $(SULLY_NAME)

$(COLLEEN_NAME): $(COLLEEN_OBJ)
	@echo "\n$(PURPLE)Sources compilation for $(COLLEEN_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]\n"
	@$(CC) $(FLAGS) $(COLLEEN_OBJ) -o $(COLLEEN_NAME)
	@echo "[$(GREEN)$(COLLEEN_NAME) compiled$(RESET)]"


$(GRACE_NAME): $(GRACE_OBJ)
	@echo "\n$(PURPLE)Sources compilation for $(GRACE_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]\n"
	@$(CC) $(FLAGS) $(GRACE_OBJ) -o $(GRACE_NAME)
	@echo "[$(GREEN)$(GRACE_NAME) compiled$(RESET)]"


$(SULLY_NAME): $(SULLY_OBJ)
	@echo "\n$(PURPLE)Sources compilation for $(SULLY_NAME)\t$(RESET)[$(GREEN)OK$(RESET)]\n"
	@$(CC) $(FLAGS) $(SULLY_OBJ) -o $(SULLY_NAME)
	@echo "[$(GREEN)$(SULLY_NAME) compiled$(RESET)]"

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)
	@echo "$(BLUE)Obj directory...$(RESET)[$(GREEN)created$(RESET)]\n"

clean:
	@rm -rf $(OBJ_DIR)
	@rm -rf Grace_kid.s Sully_* Sully_*
	@echo "\n$(RED)Obj directory...$(RESET)[$(PURPLE)deleted$(RESET)]\n"

fclean: clean
	@rm -rf $(COLLEEN_NAME) $(GRACE_NAME) $(SULLY_NAME)
	@echo "$(RED)$(COLLEEN_NAME), $(GRACE_NAME) and $(SULLY_NAME)...$(RESET)[$(PURPLE)deleted$(RESET)]\n"

re: fclean all

.PHONY: re clean flcean all
