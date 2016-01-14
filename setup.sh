# Setup script for my .rc files

# Move files that we'll link to symbolically rather than delete so we save old versions
mv ~/.zshrc ~/.zshrc.orig
mv ~/.vim ~/.vim.orig

# Create symbolic links to the rcfiles versions of our rc files
ln -s -f `pwd -P`/zshrc ~/.zshrc
ln -s -f `pwd -P`/vim ~/.vim

# Set up vim properly
cd vim
./setupPlugins.sh
./updatePlugins.sh
cd ..
