# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Sync customisations
rsync -a ~/Documents/rcfiles/zsh/custom ~/.oh-my-zsh
