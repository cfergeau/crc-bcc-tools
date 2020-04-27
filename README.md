# crc-bcc-tools
Scripts to build/use a container image with bcc-tcpconnect which can run in a CRC cluster
This is useful to test the proxy configuration of a running cluster, and making sure there
are no TCP connections being made without going through the proxy.

In order to generate the image, the kernel version used on the CRC cluster has
to be specified in the Containerfile and in the various scripts. `uname -r` will
provide this.

The files in `build/` are used to generate the bcc-tools image with the correct kernel
files.
The files in `run/` are helpers to run on the host running the Code Ready
Containers instance. `bcc.sh` starts a container in the CodeReady Containers
instance running `bcc-tcpconnect`. `bcc-filter.sh` then removes from `bcc.sh`
output all the connections internal to the cluster, and only leaves the
external connections which can then be checked.
