docker-rails-playground
=======================

Build the container::

  sudo docker build -t rails .

Run the container::

  sudo docker run -i -t -v /home/iryna/sites:/code --rm --name=rails-start rails