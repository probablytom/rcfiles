# Setup script for my .rc files
# TOM WALLIS 2016

# Clone necessary rcfile repositories
git clone git@github.com:probablytom/.vim.git vim

# Move files that we'll link to symbolically rather than delete so we save old versions
mv ~/.zshrc ~/.zshrc.orig
mv ~/.vim ~/.vim.orig
mv ~/.tmux.conf ~/.tmux.conf.orig
mv ~/.emacs.d ~/.emacs.d.old
mv ~/.spacemacs ~/.spacemacs.old

# Create symbolic links to the rcfiles versions of our rc files
ln -s -f `pwd -P`/zsh/zshrc ~/.zshrc
ln -s -f `pwd -P`/vim ~/.vim
ln -s -f `pwd -P`/vim/vimrc ~/.vimrc
ln -s -f `pwd -P`/tmux/tmux.conf ~/.tmux.conf
ln -s -f `pwd -P`/emacs ~/.emacs.d
mkdir ~/.config  # Incase it doesn't alrteady exist
ln -s -f `pwd -P`/nvim ~/.config/nvim
ln -s -f `pwd -P`/ ~/.rcfiles
ln -s -f `pwd -P`/spacemacs/.spacemacs ~/.spacemacs

# Set up zsh
cd zsh
./setup.sh
cd ..

# Set up vim
cd vim
./setupPlugins.sh
./updatePlugins.sh
cd ..


# Set up nvim
cd nvim
./setupPlugins.sh
./updatePlugins.sh
cd ..


# Tmux is already set up. 


# Emacs is already set up.


# Set up lein
echo "\nGoing through sudo so we can set up leiningen for clojure development...\n"
sudo cp leiningen/lein /bin
sudo chmod 755 /bin/lein
lein

# Set up mutagen for music organisation
mkdir requirements
git clone https://github.com/quodlibet/mutagen.git requirements/mutagen
python requirements/mutagen/setup.py install
