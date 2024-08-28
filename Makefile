@PHONY: all
asdf_setup:
	@brew update
	@brew install coreutils curl git
	@git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
	@echo "Add asdf to your oh my zsh plugins in ~/.zshrc"

asdf_tenv_setup:
	@brew install cosign
	@brew install tenv
	@tenv completion zsh > ~/.tenv.completion.zsh
	@echo "source \$HOME/.tenv.completion.zsh" >> ~/.zshrc
