FROM ubuntu

RUN apt-get update --fix-missing
RUN apt-get --assume-yes dist-upgrade
RUN apt-get --assume-yes install cups cups-core-drivers cups-filters cups-filters-core-drivers printer-driver-splix
RUN apt-get clean

COPY cupsd.conf /etc/cups/cupsd.conf

EXPOSE 631

CMD ["/usr/sbin/cupsd", "-f"]
