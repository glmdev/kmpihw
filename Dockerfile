FROM everpeace/kube-openmpi:2.1.2-16.04-0.7.0

RUN apt-get update

RUN apt-get install -y apt-transport-https software-properties-common python-software-properties

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

RUN add-apt-repository -y 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

RUN apt-get update

RUN apt-get install -y r-base
