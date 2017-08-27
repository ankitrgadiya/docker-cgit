============
Debian Nginx
============

Pull
----

.. code-block:: bash

    $ docker pull ankitrgadiya/cgit:debian-nginx

Usage
-----

.. code-block:: bash

    $ docker run --name cgit -p 80:80 -v /path/to/repository:/git
    ankitrgadiya/cgit:debian-nginx
