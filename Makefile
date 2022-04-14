config-system:
	cp ./config/touchpad/70-synaptics.conf /etc/X11/xorg.conf.d/

config-programs:
	cp -r config/* /home/$(USER)/.config/
	cp .zshrc /home/$(USER)/.zshrc
	cp .zprofile  /home/$(USER)/.zprofile
	cp .bashrc /home/$(USER)/.bashrc
	cp .Xresources /home/$(USER)/.Xresources

config-scripts:
	cp -r scripts/* /usr/bin/
