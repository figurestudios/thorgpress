FROM ubuntu
RUN apt-get update
# These are required to get some more information / run benchmarks
RUN apt-get install cpuid -y & apt-get install stress-ng -y & apt-get install sysbench -y
VOLUME /golem/input
WORKDIR /golem/work