# Ubuntu (17.10+) and Fedora (33+) include systemd-resolved which implements a caching DNS stub resolver.
# This needs to be disabled in order to use port 53.
sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'
systemctl restart systemd-resolved
