selfhosted-server
-----------------

利用 [Ansible][1] 快速自架各种服务器，包括 Shadowsocks、NGINX、PostgreSQL、Tiny Tiny RSS、Syncthing、Stikked、Git、Jenkins 等等。目前，支持 DigitalOcean 和 Linode 两家 VPS，采用 [Debian GNU/Linux][2] 8.7 64 位版本系统。

## Role 说明

+ droplet：在 [DigitalOcean][3] 上创建 droplet
+ linode：在 [Linode][16] 上创建服务器
+ common：常用的包及系统调优
+ unattendedupgrades：Debian 系统自动升级
+ shadowsocks：架设 [Shadowsocks][4] 服务（Shadowsocks-libev）
+ [kcptun][17]：基于 KCP 的安全隧道
+ [nginx][5]：架设 Web 服务
+ [postgresql][6]：架设数据库服务
+ php：[PHP][7] 语言环境
+ ttrss：[Tiny Tiny RSS][8] 阅读器
+ syncthing：[Syncthing][9] P2P 持续同步
+ [stikked][10]：Paste 服务
+ [fail2ban][11]：根据日志中的恶意指征封禁 IP
+ [certbot][12]：部署 Let's Encrypt 证书
+ [git][13]：Git 版本控制系统，外加 [stagit][14] 静态 Git 页面生成器
+ [obname][15]：备份工具
+ jenkins：[Jenkins][18] 持续集成/交付服务。
+ pelican：[Pelican][19] 静态站点生成器。

## 用法

    ./play-site.sh

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
[13]: https://git-scm.com/
[14]: http://git.2f30.org/stagit/
[15]: http://obnam.org/
[16]: https://www.linode.com/?r=28bf53dae49d2c55dd671136769c0b7526db5891
[17]: https://github.com/xtaci/kcptun
[18]: https://jenkins.io/
[19]: https://blog.getpelican.com/
