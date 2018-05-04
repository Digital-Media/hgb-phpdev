# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
- Merged hgb-phpdev-base into hgb-phpdev


## [1.0.0] - 2018-04-30
### Added
- hgb-phpdev: Starting Installation with Vagrant Box hosted add app.vagrantup.com
- hgb-phpdev-base: config.vm.boot_timeout = 1500 to fix startup problems with public key injection
- hgb-phpdev-base: comments via echo in inline sections
### Changed
- hgb-phpdev-base: Composer installation with php to get latest realease of composer for Ubuntu 16.04 LTS
- hgb-phpdev-base: config.vm.provision are now starting with a name for the block
### Fixed
- hgb-phpdev-base: moved apt-get install php7-unzip to php7 installation part
