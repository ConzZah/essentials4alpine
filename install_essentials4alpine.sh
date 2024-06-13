  #==========================================
  # Project: INSTALL_ESSENTIALS4ALPINE.sh
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 13.06.2024 / 18:27
  #==========================================
clear
echo "NOTE! PLEASE ENABLE COMMUNITY REPOS FOR THIS TO WORK."; echo ""; echo ""
echo "This will install the following packages:"; echo ""
echo "- lsblk"
echo "- mount"
echo "- nano"
echo "- ntfs-3g"
echo "- 7zip"
echo "- fastfetch"
echo "- curl" 
echo "- git"
echo "- openssh"
echo "- sudo"
echo "- man-pages, mandoc"
echo "- bash, bash-completion, bash-doc"
echo "- python3"
echo "- w3m, w3m-image, w3m-doc"
echo "- xz"
echo "- shadow"
echo "- gvfs" 
echo "- udisks2"
echo "[ PRESS ANY KEY TO START ]"; read -n 1 -s
doas apk -U upgrade # <-- runs apk update & upgrade before installing anything 
doas apk add lsblk mount nano ntfs-3g 7zip fastfetch curl git openssh sudo man-pages mandoc bash bash-completion bash-doc python3 w3m w3m-image w3m-doc xz shadow gvfs udisks2
#   ^  ^  ^  packages to be installed
