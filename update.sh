# Update this repository before anything else happens.
git pull

# Update all of our vim config
cd vim
git pull
./updateplugins.sh
cd ..

# Done. Updates should propagate on next zsh session &c as a result of symlinks from setup.sh
