SHELL := /bin/bash
RED=\033[0;31m
NC=\033[0m

pull:
	@echo -e "$(RED)pulling dotfiles...$(NC)"
	@git pull
	@echo -e "$(RED)pulling configs/nvim...$(NC)"
	@git -C configs/nvim pull
	# @echo -e "$(RED)pulling claude...$(NC)"
	# @git -C claude pull
	# @echo -e "$(RED)pulling claude/work...$(NC)"
	# @git -C claude/work pull
	# @echo -e "$(RED)pulling claude/personal...$(NC)"
	# @git -C claude/personal pull

push:
	# @echo -e "$(RED)pushing claude/personal...$(NC)"
	# @git -C claude/personal add . && (git -C claude/personal diff --cached --quiet || git -C claude/personal commit -m "update") && git -C claude/personal push
	# @echo -e "$(RED)pushing claude/work...$(NC)"
	# @git -C claude/work add . && (git -C claude/work diff --cached --quiet || git -C claude/work commit -m "update") && git -C claude/work push
	# @echo -e "$(RED)pushing claude...$(NC)"
	# @git -C claude add . && (git -C claude diff --cached --quiet || git -C claude commit -m "update submodules") && git -C claude push
	# @echo -e "$(RED)pushing configs/nvim...$(NC)"
	# @git -C configs/nvim add . && (git -C configs/nvim diff --cached --quiet || git -C configs/nvim commit -m "update") && git -C configs/nvim push
	@echo -e "$(RED)pushing dotfiles...$(NC)"
	@git add . && (git diff --cached --quiet || git commit -m "update") && git push
