# 是否超频 
echo "CONFIG_FIRMWARE_CPU_600MHZ=y" >> .config
# Default
sed -i "/CONFIG_FIRMWARE_INCLUDE_DROPBEAR/d" .config            # 删除配置项 dropbear SSH
sed -i "/CONFIG_FIRMWARE_INCLUDE_DROPBEAR_FAST_CODE/d" .config  # 删除配置项 dropbear symmetrica
sed -i "/CONFIG_FIRMWARE_INCLUDE_OPENSSH/d" .config             # 删除配置项 OpenSSH
sed -i "/CONFIG_FIRMWARE_INCLUDE_DDNS_SSL/d"  .config           # HTTPS support for DDNS client
sed -i "/CONFIG_FIRMWARE_INCLUDE_HTTPS/d"  .config              # HTTPS support
# C大
sed -i "/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d" .config    # 删除配置项 MENTOHUST
sed -i "/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d" .config   # 删除配置项 SCUTCLIENT
sed -i "/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d" .config  # 删除配置项 SS plus+
sed -i "/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d" .config     # 删除配置项 SS server
sed -i "/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d" .config # 删除配置项 DNS-FORWARDER
sed -i "/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d" .config       # 删除配置项 adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config         # 删除配置项 adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config         # 删除配置项 adbyby plus+
sed -i "/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d" .config      # 删除配置项 TUNSAFE
sed -i "/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d" .config      # 删除配置项 阿里 DDNS
sed -i "/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d" .config     # 删除配置项 smartDns
sed -i "/CONFIG_FIRMWARE_INCLUDE_SRELAY/d" .config       # 删除配置项 srelay 代理
sed -i "/CONFIG_FIRMWARE_INCLUDE_WYY/d" .config          # 删除配置项 网易云解锁
sed -i "/CONFIG_FIRMWARE_INCLUDE_WYYBIN/d" .config       # 删除配置项 网易云解锁GO版本执行文件（4M多）注意固件超大小
# 3. 添加公共自定义功能，设备单个的到设备 sh文件中添加
######################################################################
# 以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
# 科学
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >> .config  # SS plus+
# 广告
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config       # adbyby plus+
