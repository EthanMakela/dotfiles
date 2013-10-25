

######## Variables

dir =~/dotfiles
olddir =~/dotfiles_old
files="bash_profile vimrc"

#########

# create dotfile_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir $HOME/dotfiles_old
echo "...done"

# move any existing dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

#move any existing dotfiles in homedir to dotfiles_old directory, then creates symlinks
for file in $files; do 
	echo "moving any existing dotfiles from ~ to $olddir"
	mv ~/.file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.file
done

# link zsh plugins

ln -s $dir/directories/bash_profile ~/.bash_profile
ln -s $dir/directories/vimrc ~/.vimrc
#ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/subl

#cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings.backup
#ln -s $dir/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
