sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
sudo chsh -s /usr/bin/fish vagrant
# fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# config DL
if [ ! -e ~./config ]; then
	mkdir ~/.config
fi
git clone https://github.com/kaepa3/fish_config.git  ~/.config/fish

