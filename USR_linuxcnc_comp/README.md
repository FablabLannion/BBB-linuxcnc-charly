to compile a usr module (ie non rt) :

comp --install xxx.comp

attention : usrmod_init.comp have to be executed with root rigths so to compile it :

sudo rm ../machinekit-dev/bin/usrmod_init
comp --install usrmod_init.comp
sudo chown root:root ../machinekit-dev/bin/usrmod_init 
sudo chmod u+s ../machinekit-dev/bin/usrmod_init
