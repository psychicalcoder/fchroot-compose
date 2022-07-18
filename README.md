# fchroot-compose
> fchroot is a tool that helps you chroot into different arch environment.<br>
> Check the wiki for more information about fchroot.
> [https://www.funtoo.org/Package:Fchroot](https://www.funtoo.org/Package:Fchroot)

fchroot-compose is a docker-compose-like tool for fchroot. 
You can specify the bind information in a yaml file, so that you don't have to
repeatedly type a lot of long arguments whenever you want to use fchroot.

### Features
- It creates a destination directory when it doesn't exist.
- It allows you to use relative path (relative to the yaml's location) when speficying bind sources.
- When the euid is not 0, it will ask you whether you want to use sudo.

### Requirements
- python3
- pyyaml
- fchroot
- sudo (optional)

### How to use

``` bash
fchroot-compose <yaml file>
```

### YAML format

_funtoo-stage3.yaml_ is a example.

``` yaml
newroot: /home/marvin/stage3-latest
bind:
  - src: /home/marvin/fchroot-bind/fun-overlay
    dst: /fun-overlay
  - src: ../../fchroot-bind/pkg
    dst: /var/cache/portage/packages
  - src: ~/fchroot-bind/portage
    dst: /etc/portage
```

It is allowed to have multiple src/dst pairs. Relative path, and the tilde shortcut is also allowed in source paths. Dst is the chrooted path of the destination.
