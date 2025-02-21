  #==========================================
  # Project: essentials4alpine.sh
  # Author:  ConzZah / ©️ 2025
  # Last Modification: 21.02.2025 / 21:40
  #==========================================
clear
echo "NOTE! PLEASE ENABLE COMMUNITY REPOS FOR THIS TO WORK."; echo ""; echo ""
echo "This will install the following packages:"; echo ""
echo "- ufw + default rules"
echo "- coreutils"
echo "- pciutils"
echo "- grep"
echo "- sed"
echo "- lsblk"
echo "- mount"
echo "- nano"
echo "- ntfs-3g"
echo "- 7zip"
echo "- fastfetch"
echo "- ffmpeg"
echo "- curl" 
echo "- git"
echo "- openssh"
echo "- sudo"
echo "- man-pages, mandoc"
echo "- bash, bash-completion, bash-doc"
echo "- python3"
echo "- vlc-qt"
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
doas apk add coreutils pciutils grep sed lsblk mount nano ntfs-3g 7zip fastfetch ffmpeg curl git openssh sudo man-pages mandoc bash bash-completion bash-doc python3 vlc-qt w3m w3m-image w3m-doc xz shadow gvfs udisks2
#   ^  ^  ^  packages to be installed  ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^  ^  ^   ^
