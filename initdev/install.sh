# Author: kheladi soumia
# Banner
cat << "EOF"
 
by soumia kheladi -USTHB 2018-

EOF

# input data
github_user='bimade'

# Check if command exist
if command -v initdev &> /dev/null; then
echo 'the application is already installed !'
exit 0
else

echo 'installing initdev ::'
# cloning the repo
if [ ! -d $HOME/.initdev ]; then
echo 'Cloning the repot ::'
git clone https://github.com/$github_user/initdev_cc/ $HOME/.initdev
mv $HOME/.initdev/main.sh $HOME/.initdev/initdev
else
	echo ".initdev folder already exist !"
	exit 1
fi

# configuring Linux
if [ $SHELL == '/bin/bash' ]; then
echo 'bash detected => initializing PATH variable.'
echo "export PATH=$PATH:$HOME/.initdev" >> $HOME/.bashrc
echo 'resourcing bashrc ::'
source $HOME/.bashrc
fi

if [ $SHELL == '/bin/bash' ]; then
echo 'zsh detected => initializing PATH variable.'
echo "export PATH=$PATH:$HOME/.initdev" >> $HOME/.zshrc
echo 'resourcing zshrc ::'
source $HOME/.zshrc
fi

echo 'Installation terminé.'

fi
