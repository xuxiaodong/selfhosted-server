selfhosted-server
-----------------

利用 Ansible 自架各种服务器，目前仅支持 Debian GNU/Linux 8.x。

## Role 说明

+ droplet：在 DigitalOcean 上创建 droplet
+ shadowsocks：架设 Shadowsocks 服务（Shadowsocks-libev）

## 用法

    ansible-playbook site.yml
