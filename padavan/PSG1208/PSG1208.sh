# 是否超频 
# echo "CONFIG_FIRMWARE_CPU_600MHZ=y" >> .config
default_path='./user/shared/defaults.h'  # 默认文件配置目录
echo "执行如下命令sed -i \"s/BOARD_PID/\"PHICOMM\"/g\" $default_path"
sed -i "s/BOARD_PID/\"PHICOMM\"/g" $default_path
default_theme_path='./user/www/n56u_ribbon_fixed'
sudo rm -rf $default_theme_path/bootstrap
sudo rm -rf $default_theme_path/images
cp -rf ../theme/. $default_theme_path