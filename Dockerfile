FROM tahoelafs/base:1.12

RUN \
  tahoe --version \
  && \
  tahoe create-node --help \
  && \
  tahoe create-node \
     --basedir /tahoe-node/ \
     --location AUTO \
     --port 3456 \
     --webport tcp:3457\
  && \
  nl /tahoe-node/tahoe.cfg && \
  ls -al /tahoe-node/

ENTRYPOINT [ "tahoe", "--node-directory", "/tahoe-node/" ]
CMD [ "run" ]
