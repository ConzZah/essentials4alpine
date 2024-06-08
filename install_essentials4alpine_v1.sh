  #==========================================
  # Project: INSTALL_ESSENTIALS4ALPINE_v1.sh
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 08.06.2024 / 08:38
  #==========================================
clear
echo "NOTE! PLEASE ENABLE COMMUNITY REPOS FOR THIS TO WORK."; echo ""; echo ""
echo "This will install the following packages:"; echo ""
echo "- man"
echo "- lsblk"
echo "- mount"
echo "- nano"
echo "- ntfs-3g"
echo "- 7zip"
echo "- neofetch"
echo "- curl" 
echo "- git"
echo "- openssh"
echo "- sudo"
echo "- bash, bash-completion, bash-doc"
echo "- python3"
echo ""
echo "[ PRESS ANY KEY TO START ]"; read -n 1 -s
doas apk -U upgrade # <-- runs apk update & upgrade before installing anything 
doas apk add mandoc man-pages lsblk mount nano ntfs-3g 7zip neofetch curl git openssh sudo bash bash-completion bash-doc python3
#   ^  ^  ^  packages to be installed
