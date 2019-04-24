FROM mpioperator/mpi-operator:latest

CMD mpirun "echo $(hostname):hello"
