KERNEL_VERSION=4.18.0-147.3.1.el8_1
podman build -t bcc-tcpconnect . .
podman push localhst/bcc-tcpconnect quay.io/cfergeau/bcc-tcpconnect:$KERNEL_VERSION
