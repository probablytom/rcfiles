# Made by Tom Wallis, 2014-2016. 
#To be run on a new system, to get packages &c set up and get vim just the way you like it.

# Install and set up Pathogen.
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install and set up Sensible.
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Set up Syntactic.
cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git

# Set up NERD Tree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# Set up Airline.
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline 

# Set up Ctrl-P
cd ~/.vim && git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# Currently not using this. Try method at http://ow.ly/FRrHA
# # Set up vim-latex
# cd ~/.vim/bundle && git clone git://github.com/lervag/vim-latex

# Tabular for vim-markdown and plasticboy's vim-markdown plugin itself.
cd ~/.vim/bundle && git clone git@github.com:godlygeek/tabular.git    # Tabular
git clone git@github.com:plasticboy/vim-markdown.git                 # Plasticboy's vim-markdown

# We'll also neet to install some pip packages to get Python stuff working.
pip install -r requirements.txt
pip3 install -r requirements.txt

# For some things we're moving to dein, too:
mkdir -p ~/.rcfiles/nvim/dein
git clone https://github.com/Shougo/dein.vim.git \
	~/.rcfiles/nvim/dein
source ~/.rcfiles/nvim/dein/bin/installer.sh  # Go through the installation process
