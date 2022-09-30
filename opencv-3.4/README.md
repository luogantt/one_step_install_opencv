## OpenCV: Open Source Computer Vision Library

### install 


```
sudo bash install.sh
```

###### 5、接下来可以配置一些OpenCV的编译环境首先将OpenCV的库添加到路径，从而可以让系统找到，接下来的步骤参照了https://blog.csdn.net/cocoaqin/article/details/78163171，这篇博客

```bash
sudo gedit /etc/ld.so.conf.d/opencv.conf 
```
执行此命令后打开的可能是一个空白的文件，不用管，只需要在文件末尾添加
```bash
/usr/local/lib  
```
6、执行如下命令使得刚才的配置路径生效

```bash
sudo ldconfig  
```
7、配置bash

```bash
sudo gedit /etc/bash.bashrc 
```
 在最末尾添加
```bash
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig  
export PKG_CONFIG_PATH  
```
保存，执行如下命令使得配置生效

```bash
source /etc/bash.bashrc  
```
更新

```bash
sudo updatedb 
```
8、至此所有的配置都已经完成 
下面用一个小程序测试一下

找到 
cd到opencv-3.4.1/samples/cpp/example_cmake目录下 
我们可以看到这个目录里官方已经给出了一个cmake的example我们可以拿来测试下 
按顺序执行

```bash
cmake .
make
./opencv_example
```
即可看到打开了摄像头，在左上角有一个hello opencv 
即表示配置成功

 

至此，总结一下：

一定不要轻易autoremove！！！很容易把其他软件依赖的库给删掉，从而导致其他软件无法正常使用。安装其他东西的时候也一定要注意不要同意系统提示的remove！！！

[link](https://blog.csdn.net/nkhgl/article/details/83176342)
