# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Sync customisations
rsync -a ./custom/themes ~/.oh-my-zsh
cp ~/.rcfiles/zsh/gitster.zsh-theme ~/.oh-my-zsh/themes/gitster.zsh-theme
