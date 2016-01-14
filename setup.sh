# Setup script for my .rc files

# Move files that we'll link to symbolically rather than delete so we save old versions
mv ~/.zshrc ~/.zshrc.orig
mv ~/.vim ~/.vim.orig

# Create symbolic links to the rcfiles versions of our rc files
ln -s -f `pwd -P`/zsh/zshrc ~/.zshrc
ln -s -f `pwd -P`/vim ~/.vim

# Set up zsh
cd zsh
./setup.sh
cd ..

# Set up vim
cd vim
./setupPlugins.sh
./updatePlugins.sh
cd ..
