FROM jolielang/jolie
EXPOSE 8000
COPY server.ol server.ol
COPY twiceInterface.iol twiceInterface.iol
CMD jolie server.ol