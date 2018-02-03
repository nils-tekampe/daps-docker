# daps-docker
This repository holds a specification for a docker container that implements the Docbook Authoring and Publishing Suite (https://opensuse.github.io/daps/)

# Use
In order to use this Docker image:
Install Docker (https://docs.docker.com/install/) and then issue the following command on a commandline:

'docker run -it dernils/daps-docker:latest /bin/sh'

In case you would like to mount a local folder into the docker container (that could hold your DocBook projects)

'docker run -v /Path/to/Your/folder/:/dockerShare -it test /bin/sh'

# Warning
This repository uses a SSH keyfile that is embeeded into the docker container and therewith public (and it is also checked into this repo). **Please do not use this keyfile for productive purposes but replace with your own key!**

# license
The work in this repository is published under the MIT license
