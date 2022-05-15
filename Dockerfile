FROM ubuntu
RUN apt-get update
# These are required to get some more information / run benchmarks
RUN apt-get install stress-ng sysbench cpuid -y
VOLUME /golem/input
WORKDIR /golem/work
