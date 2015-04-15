sudo apt-get -y update
sudo apt-get -y install build-essential python-dev python-setuptools python-numpy python-scipy libatlas-dev libatlas3gf-base
sudo update-alternatives --set libblas.so.3 /usr/lib/atlas-base/atlas/libblas.so.3
sudo update-alternatives --set liblapack.so.3 /usr/lib/atlas-base/atlas/liblapack.so.3
sudo apt-get -y install python-matplotlib
sudo easy_install pip

su vagrant <<'EOF'
pip install --user --install-option="--prefix=" -U scikit-learn
EOF
