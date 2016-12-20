# [iManager](https://telegram.me/imanager)
* **Install Packs**
`````sh
sudo apt-get update; sudo apt-get upgrade -y --force-yes; sudo apt-get dist-upgrade -y --force-yes; sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev libjansson* libpython-dev make unzip git redis-server g++ autoconf -y --force-yes
`````
* **Install Bot**
`````sh
cd $HOME && git clone https://github.com/MobinDehghani/iManager.git && cd iManager && chmod +x launch.sh && ./launch.sh install && ./launch.sh
`````
* **launch Bot**
`````sh
cd $HOME && cd iManager && ./launch.sh
`````
* **Start Auto-launch**
`````sh
cd $HOME && cd iManager && chmod 777 mobin.sh && screen ./mobin.sh
`````
* **install Redis [Free Servers]**
`````sh
sudo service redis-server start && redis-cli
`````

