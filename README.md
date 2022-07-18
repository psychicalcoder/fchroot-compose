# fchroot-compose
> fchroot is tool that help you to chroot into different arch environment.<br>
> Check the wiki for more information about fchroot.
> [https://www.funtoo.org/Package:Fchroot](https://www.funtoo.org/Package:Fchroot)

fchroot-compose is a docker-compose-like tool for fchroot. 
You can speficy the bind information in a yaml file, so that you don't have to
repeatedly type them in whenever you want to use fchroot.

### Features
- Creates a destination directory when it doesn't exist.
- Allows you to use relative path (relative to the yaml's location) when speficying bind sources.
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

Here is an example, funtoo-stage3.yaml.

``` yaml
newroot: /home/marvin/stage3-latest
bind:
  - src: /home/marvin/fchroot-bind/fun-overlay
    dst: /fun-overlay
  - src: /home/marvin/fchroot-bind/pkg
    dst: /var/cache/portage/packages
  - src: /home/marvin/fchroot-bind/portage
    dst: /etc/portage
```

- newroot:
  the chroot destination
- bind:
  mount directories into the chroot environment
  + src: directories on the host
  + dst: destination
