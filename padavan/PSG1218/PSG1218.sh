# 是否超频 
echo "CONFIG_FIRMWARE_CPU_600MHZ=y" >> .config

# 添加插件
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >> .config  # SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=y" >> .config       # adbyby plus+
