FROM uber/horovod:0.15.2-tf1.12.0-torch1.0.0-py2.7

# Temporary fix until Horovod pushes out a new release.
# See https://github.com/uber/horovod/pull/700
RUN sed -i '/^NCCL_SOCKET_IFNAME.*/d' /etc/nccl.conf

CMD mpirun "echo $(hostname):hello"
