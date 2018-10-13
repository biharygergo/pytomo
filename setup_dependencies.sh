#/bin/sh

pip install backports-functools_lru_cache --user
pip install -U matplotlib --user

distro=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
if [ $distro == "Fedora" ]
then
    echo "fedora"
    sudo dnf install rrdtool-devel python-devel
elif [ $distro == "Ubuntu" ]
then
    echo "ubuntu"
    sudo apt-get install librrd-dev libpython-dev
fi

pip install rrdtool --user
pip install web.py --user
