FROM      ubuntu:14.04
MAINTAINER Ahmed Kamal <email.ahmedkamal@googlemail.com>

RUN apt-get update && apt-get install -y tar wget
RUN wget 'http://www.minizinc.org/downloads/release-2.0.1/minizinc-2.0.1-linux64.tar.gz'
RUN tar xzf minizinc-2.0.1-linux64.tar.gz
RUN mkdir -p /usr/local/share/minizinc/ /usr/share/doc/minizinc/
RUN mv minizinc-2.0.1/bin/* /usr/local/bin/ && mv minizinc-2.0.1/share/* /usr/local/share/minizinc/ && mv minizinc-2.0.1/doc/* /usr/share/doc/minizinc/
RUN rm -rf minizinc*
CMD ["/bin/bash"]
