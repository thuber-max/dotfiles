# dotfiles

## soon to be a script

mkdir ~/git-repos && \
git clone https://github.com/thuber-max/dotfiles ~/git-repos/dotfiles && \
cat ~/git-repos/dotfiles/bashrc >> ~/.bashrc && \
git clone https://github.com/thuber-max/vim-ide.git ~/.vim && \
cd ~/.vim && \
bash ~/.vim/setup_vim.sh
