sudo -s

# delete existing conda
cd /usr/bin
rm -rf ./conda

# install new conda
cd /home
wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
bash Anaconda3-2019.07-Linux-x86_64.sh
cd ~
source .bashrc

conda create -n cs7643_proj python=3.6

source activate cs7643_proj
conda update pip
pip install numpy
pip install torch==1.2
pip install torchvision==0.4.0
pip install tqdm
pip install matplotlib
pip install gdown
#pip install tensorflow
pip install scipy
pip install opencv-python

# to use jupyter notebook
conda install jupyter
conda install nb_conda_kernels
pip install nbdime
pip install jupyterlab

# jacobian
pip install git+https://github.com/facebookresearch/jacobian_regularizer
