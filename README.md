selfhosted-server
-----------------

利用 [Ansible][1] 快速自架各种服务器，包括 Shadowsocks、NGINX、PostgreSQL、Tiny Tiny RSS、Syncthing、Stikked、Git、Jenkins 等等。目前，支持 DigitalOcean、Linode、Vultr、Google Compute Engine 等 VPS，采用 [Debian GNU/Linux][2] 8.7 64 位版本系统。

## Role 说明

### VPS

+ droplet：在 [DigitalOcean][3] 上创建 droplet
+ linode：在 [Linode][16] 上创建服务器实例
+ vultr：在 [Vultr][29] 上创建服务器实例
+ gce：在 [Google Cloud Platform][30] 上创建服务器实例

### Debian

+ common：常用的包及系统调优
+ unattendedupgrades：Debian 系统自动升级
+ debian-packaging：Debian 打包环境

### Web Service

+ [nginx][5]：Web 服务器
+ php：[PHP][7] 语言环境
+ [certbot][12]：部署 Let's Encrypt 证书
+ ttrss：[Tiny Tiny RSS][8] 阅读器 ([demo][21])
+ syncthing：[Syncthing][9] P2P 持续同步 ([demo][22])
+ [stikked][10]：Paste 服务 ([demo][23])
+ [git][13]：Git 版本控制系统，外加 [stagit][14] 静态 Git 页面生成器 ([demo][24])
+ jenkins：[Jenkins][18] 持续集成/交付服务 ([demo][25])
+ cachet：[Cachet][27] 状态页面系统 ([demo][28])
+ prometheus：[Prometheus][31] 监视及告警系统
+ grafana：[Grafana][32] 可视化 Dashboard
+ yourls：[Yourls][33] 网址缩短服务

### Database

+ [postgresql][6]：PostgreSQL 数据库
+ [mariadb][26]：MariaDB 数据库

### Secure proxy

+ shadowsocks：架设 [Shadowsocks][4] 服务（Shadowsocks-libev）
+ [kcptun][17]：基于 KCP 的安全隧道

### Tools

+ [fail2ban][11]：根据日志中的恶意指征封禁 IP
+ [obname][15]：备份工具
+ pelican：[Pelican][19] 静态站点生成器
+ lsyncd：[Lsyncd][20] 实时同步（Mirror）
+ ansible：Ansible 自动化工具

## 用法

请参考《跟 Toy 玩自架服务器》系列文章：

1. [创建 Vultr 服务器实例](https://linuxtoy.org/archives/selfhosted-server-1.html)
2. [创建 Linode 服务器实例](https://linuxtoy.org/archives/selfhosted-server-2.html)

## 许可

The MIT License (MIT)

Copyright © 2017 Xiaodong Xu, https://linuxtoy.org <xxdlhy [at] gmail [dot] com>

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
[20]: http://axkibe.github.io/lsyncd/
[21]: https://planet.unixkoans.com/
[22]: https://sync.unixkoans.com/
[23]: https://paste.unixkoans.com/
[24]: https://git.unixkoans.com/
[25]: https://ci.unixkoans.com/
[26]: https://mariadb.com/
[27]: https://cachethq.io/
[28]: https://status.unixkoans.com/
[29]: http://www.vultr.com/?ref=7123175
[30]: https://cloud.google.com/
[31]: https://prometheus.io/
[32]: http://grafana.org/
[33]: http://yourls.org/
