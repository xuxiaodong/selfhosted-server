selfhosted-server
-----------------

利用 [Ansible][1] 自架各种服务器，目前仅支持 [Debian GNU/Linux][2] 8.x。

## Role 说明

+ droplet：在 [DigitalOcean][3] 上创建 droplet
+ shadowsocks：架设 [Shadowsocks][4] 服务（Shadowsocks-libev）
+ [nginx][5]：架设 Web 服务
+ [postgresql][6]：架设数据库服务
+ php：[PHP][7] 语言环境
+ ttrss：[Tiny Tiny RSS][8] 阅读器
+ syncthing：[Syncthing][9] P2P 持续同步
+ [stikked][10]：Paste 服务
+ [fail2ban][11]：根据日志中的恶意指征封禁 IP
+ [certbot][12]：部署 Let's Encrypt 证书

## 用法

    ansible-playbook site.yml

[1]: https://www.ansible.com/
[2]: https://www.debian.org/
[3]: https://m.do.co/c/7758457f61ad
[4]: https://shadowsocks.org/
[5]: http://nginx.org/
[6]: https://www.postgresql.org/
[7]: http://php.net/
[8]: https://tt-rss.org/
[9]: https://syncthing.net/
[10]: https://github.com/claudehohl/Stikked
[11]: https://www.fail2ban.org/
[12]: https://certbot.eff.org/
