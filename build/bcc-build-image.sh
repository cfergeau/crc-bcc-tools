KERNEL_VERSION=4.18.0-147.8.1.el8_1
podman build --build-arg=KERNEL_VERSION=$KERNEL_VERSION -t bcc-tcpconnect . .
podman push localhost/bcc-tcpconnect quay.io/teuf/bcc-tcpconnect:$KERNEL_VERSION
