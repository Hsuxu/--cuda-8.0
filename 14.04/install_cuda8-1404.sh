# writed by Hsu
# Hsuxu820@gmail.com
echo '本脚本适用ubuntu 14.04，一键安装cuda-8.0和cudnn，并添加环境变量\nPS：使用本脚本需联网并自行先下载cuda-8.0 和cudnn'
read -p 'Specify path of cuda-8.0 with .deb extension [default=./cuda-repo-ubuntu1404-8-0-local-ga2_8.0.61-1_amd64.deb]:' cuda
cuda=${cuda:-./cuda-repo-ubuntu1404-8-0-local-ga2_8.0.61-1_amd64.deb}  
sudo dpkg -i $cuda
sudo apt-get update
echo 'installing '$cuda 
sudo apt-get install cuda
read -p 'Specify the path of cudnn with .tgz extension [default=./cudnn-8.0-linux-x64-v5.1.tgz]:' cudnn
cudnn=${cudnn:-./cudnn-8.0-linux-x64-v5.1.tgz} 
echo 'extract '$cudnn 'to cuda...'
tar -xvf $cudnn
sudo cp cuda/include/* /usr/local/cuda-8.0/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo ldconfig
echo 'export PATH=/usr/local/cuda-8.0/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
rm -rf ./cuda
source ~/.bashrc



