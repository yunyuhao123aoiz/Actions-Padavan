DESTDIR=/opt/rt-n56u
default_theme_path="${DESTDIR}/trunk/user/www/n56u_ribbon_fixed"
shadowsocks_sh_path="${DESTDIR}/trunk/user/shadowsocks/scripts/shadowsocks.sh"

 echo "--------------开始复制默认配置文件----------"
\cp -f ../PSG1208/defaults.h ${DESTDIR}/trunk/user/shared/defaults.h
 echo "--------------开始复制默认配置文件结束----------"

 echo "--------------开始复制主题----------------------"
sudo rm -rf $default_theme_path/bootstrap
sudo rm -rf $default_theme_path/images
cp -rf ../PSG1208/theme/. $default_theme_path
 echo "--------------复制主题文件结束------------------"

 echo "--------------开始复制shadowsocks.sh----------------------"
\cp -f ../PSG1208/shadowsocks.sh ${DESTDIR}/trunk/user/shadowsocks/scripts/shadowsocks.sh
 echo "--------------复制shadowsocks.sh文件结束------------------"
