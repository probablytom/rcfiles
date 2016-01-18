# Setup script for my .rc files

# Clone necessary rcfile repositories
git clone git@github.com:probablytom/.vim.git vim

# Move files that we'll link to symbolically rather than delete so we save old versions
mv ~/.zshrc ~/.zshrc.orig
mv ~/.vim ~/.vim.orig
mv ~/.tmux.conf ~/.tmux.conf.orig

# Create symbolic links to the rcfiles versions of our rc files
ln -s -f `pwd -P`/zsh/zshrc ~/.zshrc
ln -s -f `pwd -P`/vim ~/.vim
ln -s -f `pwd -P`/tmux/tmux.conf ~/.tmux.conf

# Set up zsh
cd zsh
./setup.sh
cd ..

# Set up vim
cd vim
./setupPlugins.sh
./updatePlugins.sh
cd ..

# Tmux is already set up. 
