# POC

##oem定制

oem
├── check_hooks    # 审核模式的相关脚本，对审核模式的自定义通过修改这个目录实现
│   ├── before_check    # 审核模式开始前准备步骤执行
│   ├── in_check    # 审核模式过程中执行
│    │   └── 01_kms.job   # 产线kms批量激活配置脚本
│   └── after_check    # 审核模式结束后清场步骤执行
│       └── 98_disable_developer_mode.job    <----审核模式完成后关闭开发者模式
├── check_start.sh
├── deb    # 在系统安装过程中需要安装或升级的程序包
│   └── dde-control-center_5.1.0.12-sannuo+c1-1_mips64el.deb│
├── hooks    # 安装过程中需要执行的相关脚本
│   ├── before_install    # 安装器开始加载配置前执行
│   ├── before_chroot    # 跳转到安装好的系统环境中进行调整前执行
│   ├── in_chroot    # 跳转到安装好的系统环境中进行调整时执行
│   │   ├── 99_enable_developer_mode.job <---为审核模式开启开发者模式，如果不需要审核模式不要放入这个脚本
│   └── after_chroot    # 跳转到安装好的系统环境中进行调整完成后执行
├── full_disk_policy.json   # SP1Update1及以后版本的自定义分区策略
└── settings.ini    # 安装器配置文件，用于控制安装器的各种行为