# docker_fish

Some fish utility functions for an application run with docker-compose.
Please note, at the moment the stack has to be up and running for the
functions to work because under the hood the use the
``docker-compose exec`` command.

dcomp-django
------------

Usage:

    dcomp-django <service name> <django command> [args]

Run django commands in the docker container. The first argument is the
service name defined in the docker-compose file. The second is the django
command you want to execute. If that command takes further arguments just
pass them in as args or kwargs.

Example:

    dcomp-django machine-manager runserver 0.0.0.0:5004


dcomp-superv
------------

Usage:

    dcomp-superv <service name> <supervisor command> [args]

Run supervisorctl commands in the docker container. The first argument is the
service name defined in the docker-compose file. The second is the supervisorctl
command you want to execute. If that command takes further arguments just
pass them in as args or kwargs.

Example:

    dcomp-superv machine-manager fg gunicorn