# dotfiles
My dot files
Using this method to store https://news.ycombinator.com/item?id=11070797

1. Initialising the bare git repository for the dot files.
http://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/
https://www.youtube.com/watch?v=krR847J8yPc

git init --bare $HOME/.config/mydotgit
	

2. Add alias to .bashrc

`vim .bashrc`
`alias dotcfg='/usr/bin/git --git-dir=$HOME/.config/mydotgit/ --work-tree=$HOME'`
`source ~/.bashrc`
`dotcfg config status.showUntrackedFiles no`

3. Add remote repository

`dotcfg remote add origin git@github.com:cianoflynn/dotfiles.git`

4. Add dot file to repository and push to git repository

`dotcfg status`
`dotcfg add ~/.vimrc`
`dotcfg commit -m "Add vimrc"`
`dotcfg push -u origin master`
    
    
5. Sync repository and dot files on other computer

`alias dotcfg='/usr/bin/git --git-dir=$HOME/.config/mydotgit/ --work-tree=$HOME'`
`echo ".cfg" >> .gitignore`
`git clone --bare https://github.com/cianoflynn/dotfiles.git/ $HOME/.config/mydotgit`
`dotcfg checkout`
`dotcfg config --local status.showUntrackedFiles no`
`dotcfg pull`

Extra Bits
`git clone --separate-git-dir=$HOME/.config/mydotgit/ $HOME/myconf-tmp`
`cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules`
`rm -r ~/myconf-tmp/`
`alias config='/usr/bin/git --git-dir=$HOME/.config/mydotgit/ --work-tree=$HOME'`
    
