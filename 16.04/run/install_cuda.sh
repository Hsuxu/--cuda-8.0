sudo service lightdm stop
sudo ./cuda_8.0.61_375.26_linux.run
sudo ./cuda_8.0.61.2_linux.run
sudo cp ./cuda/include/cudnn.h /usr/local/cuda-8.0/include/
sudo cp ./cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo ldconfig
echo 'export PATH=/usr/local/cuda-8.0/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
sudo service lightdm start

