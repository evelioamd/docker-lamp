# docker-lamp
Docker lamp stack

Lamp stack as docker containers.

Just clone this repo, then run next command to have a full lamp stack running on localhost:

```

$ docker-compose up -d

```

*this assume, you have already installed Docker Desktop

###Apache vhosts

You can configure sites in the Apache.conf file located in *sites/* folder, the content of the file is sync with *sites-enabled* in *www* container.
