# gnuscreen

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with gnuscreen](#setup)
    * [What gnuscreen affects](#what-gnuscreen-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with gnuscreen](#beginning-with-gnuscreen)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module installs and configures GNU Screen on a user by user basis.
It has been tested on Redhat/CentOS/Fedora distros.

This module is divided into a packages and a config class. The config class 
can be used by a non-root user. It creates a .screen directory, which can hold
multiple configurations and log files. If the .screenrc file does not exist it
symlinks to a default config, which is more useful than the system screenrc. Users
can overwrite or point the symlink elsewhere, so it will be easy to install this
side-by-side with another configuration and use both. Future alternate configurations
will be deployed in the same way. Rather than trying to template the .screenrc, this just
provides a means of managing multiple alternate config files.

## Setup

### What gnuscreen affects

If you are using ~/.screen or ~/.screenrc for anything, it may cause conflict. 

### Beginning with gnuscreen

You module is designed to be used on a user by user basis. The default will configure the root user.

## Usage

This module assumes you have a valid user home. You must pass determine a user's home directory
externally and pass that to the module. Otherwise, it will configure root.

Typically, it would be called as below:

```
class { 'gnuscreen':
  user_home => '/home/username',
} 
```

This would install this configuration for the user `username`.

## Reference

It includes two classes `packages` and `config`.

## Limitations

It has only been tested on Fedora, but should work on most Linux distros.
The default screen config launches some applications that may not be installed on all systems.

## Development

This is currently a minimal release. Anything may change.


