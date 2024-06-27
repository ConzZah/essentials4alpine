  #==========================================
  # Project: INSTALL_ESSENTIALS4ALPINE.sh
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 27.06.2024 / 16:59
  #==========================================
clear
echo "NOTE! PLEASE ENABLE COMMUNITY REPOS FOR THIS TO WORK."; echo ""; echo ""
echo "This will install the following packages:"; echo ""
echo "- ufw + default rules"
echo "- lsblk"
echo "- mount"
echo "- nano"
echo "- ntfs-3g"
echo "- 7zip"
echo "- fastfetch"
echo "- curl" 
echo "- git"
echo "- vlc"
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
#########################################
# basic ufw setup
doas apk add ip6tables ufw 
doas ufw enable     # <-- enables firewall
doas rc-update add ufw # <-- adds init scripts
doas ufw default deny incoming # <-- deny all incoming traffic
doas ufw default allow outgoing # <-- allow all outgoing traffic
doas ufw limit SSH  # <-- open SSH port but protect against brute-force login attacks
doas ufw reload # <-- reload ufw when done & continue
#########################################
doas apk add lsblk mount nano ntfs-3g 7zip fastfetch curl git vlc-qt openssh sudo man-pages mandoc bash bash-completion bash-doc python3 w3m w3m-image w3m-doc xz shadow gvfs udisks2
#   ^  ^  ^  packages to be installed  ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^
