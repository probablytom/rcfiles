# Made by Tom Wallis, 2014-2015. 
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

