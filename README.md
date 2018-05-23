### USAGE

#### Build the image:

$ docker image build -t dev_box:v0.1


#### Run the container

$ docker container run --name devbox  --rm -it -v `pwd`:/working  dev_box:v0.1
