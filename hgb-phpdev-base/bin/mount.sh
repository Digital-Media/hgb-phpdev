echo "with virtual box gui a host directory has to be mapped to code"
sudo mount -t vboxsf -o umask=0022,gid=33,uid=33 code /var/www/html/code
