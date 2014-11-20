docker-rails-playground
=======================

Build the container::

  sudo docker build -t rails .

Run the container::

  sudo docker run -i -t -v <path-on-host-machine>:/code --rm --name=rails-playground rails