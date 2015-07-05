#Remove osxfuse if installed via homebrew:
brew uninstall osxfuse

#Install OSXFUSE
brew install Caskroom/cask/osxfuse  # installs Homebrew Cask
brew cask install osxfuse # install osxfuse
 
#Reboot (optional but recommended by osxfuse)
 
#Install ntfs-3g via homebrew:
brew update && brew install homebrew/fuse/ntfs-3g
 
#mount_ntfs:
sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.original
sudo ln -s /usr/local/Cellar/ntfs-3g/2014.2.15/sbin/mount_ntfs /sbin/mount_ntfs
 
#run this command
ls -l /sbin/mount_ntfs*

The output of the following should be as below:
/sbin/mount_ntfs -> /usr/local/Cellar/ntfs-3g/2014.2.15/sbin/mount_ntfs
/sbin/mount_ntfs.original -> /System/Library/Filesystems/ntfs.fs/Contents/Resources/mount_ntfs
 
#Reboot and voila
