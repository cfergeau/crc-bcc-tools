PASSWORD=''

KERNEL_VERSION=$(ssh crc uname -r)
KERNEL_VERSION="latest"
REGISTRY="docker-registry.upshift.redhat.com"
BCC_IMAGE="$REGISTRY/cfergeau/bcc-tcpconnect:$KERNEL_VERSION"

#ssh crc sudo podman login --tls-verify=false  -p $PASSWORD -u unused $REGISTRY
ssh crc sudo podman pull --tls-verify=false $BCC_IMAGE
ssh crc sudo podman run --privileged -v /lib/modules:/lib/modules:ro $BCC_IMAGE
