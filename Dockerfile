FROM      ubuntu:14.04
MAINTAINER Ahmed Kamal <email.ahmedkamal@googlemail.com>

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get -qq update && apt-get install -qq -y wget
RUN wget -q 'http://www.minizinc.org/downloads/release-2.0.1/minizinc-2.0.1-linux64.tar.gz'
RUN tar xzf minizinc-2.0.1-linux64.tar.gz
RUN mkdir -p /usr/share/doc/minizinc/
RUN mv minizinc-2.0.1/bin/* /usr/local/bin/ && mv minizinc-2.0.1/share/* /usr/local/share/ && mv minizinc-2.0.1/doc/* /usr/share/doc/minizinc/
RUN rm -rf minizinc* && apt-get clean all
CMD ["/bin/bash"]
