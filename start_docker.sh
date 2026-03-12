
# docker run -v /home/simon:/home/simon -it simonwp/resourcecode /bin/bash

docker run --rm -it \
  -v /home/simon:/home/simon \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e MPLBACKEND=Agg \
  simonwp/resourcecode \
  /bin/bash 

#   cd /home/simon/calypso_science/proposals/PortHaliguen

# docker run -it \
#   --env DISPLAY=$DISPLAY \
#   --env XAUTHORITY=$XAUTHORITY \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -v $XAUTHORITY:$XAUTHORITY \
#   --user $(id -u):$(id -g) \
#   --env QT_X11_NO_MITSHM=1 \
#   --env QT_QPA_PLATFORM=xcb \
#   --env NO_AT_BRIDGE=1 \
#   --net=host \
#   -v $(pwd):/home/user/data \
#    simonwp/resourcecode   /bin/bash 