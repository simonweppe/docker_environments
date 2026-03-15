
# docker run -v /home/simon:/home/simon -it simonwp/resourcecode /bin/bash

docker run --rm -it \
  -v /home/simon:/home/simon \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e MPLBACKEND=Agg \
  simonwp/resourcecode \
  /bin/bash 

# MUST USE  that in python code :
# import matplotlib
# matplotlib.use('TkAgg')
# import matplotlib.pyplot as plt
