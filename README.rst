```https://www.ecloudcontrol.com/best-practices-to-reduce-docker-images-size/```

Did a task on Docker using a 9-year-old -django application from github
1. Clone the repo and run the django in my local system then i run it in the Virtual box, then noted the dependencies.(python 2.7 , pip-20.3.4)
2. Then i understand the building process and its implementation.
3. Then i make to run same process in docker container using ubuntu 22.04, 20.04 base image.
4. then i reduce the docker image size with ubuntu and then alpine base image ubuntu -477, 466,423 then last 152mb then using alpine base image -113mb.then i reduce layers and remove the install packages after completion " rm -rf /var/lib/apt/lists/*".
5. then write the Dockerfile build it then run the container then i understand the conflict of dependencies and using shell script to reduce the number of layers in dockerfile.
6. Understanding the overlay2, readable layer, writeable layer, merged layer in docker.
7. the conflict why do containers automatically stoped? who is responsible for container state?what are the total states in docker?

Blog- SoC and Complinace
Certification- hands on with VMs ,intro to Resource groups, users, groups, administrative units, managed licences.





***************
Notejam: Django
***************

Notejam application implemented using `Django <https://www.djangoproject.com/>`_ framework.

Django version: 1.6

==========================
Installation and launching
==========================

-----
Clone
-----

Clone the repo:

.. code-block:: bash

    $ git clone git@github.com:komarserjio/notejam.git YOUR_PROJECT_DIR/

-------
Install
-------
Use `virtualenv <http://www.virtualenv.org>`_ or `virtualenvwrapper <http://virtualenvwrapper.readthedocs.org/>`_
for `environment management <http://docs.python-guide.org/en/latest/dev/virtualenvs/>`_.

Install dependencies:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/django/
    $ pip install -r requirements.txt

Create database schema:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/django/notejam/
    $ ./manage.py syncdb
    $ ./manage.py migrate

------
Launch
------

Start django web server:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/django/notejam/
    $ ./manage.py runserver

Go to http://127.0.0.1:8000/ in your browser.

---------
Run tests
---------

Run functional and unit tests:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/django/notejam/
    $ ./manage.py test


============
Contribution
============
Do you have python/django experience? Help the app to follow python and django best practices.

Please send your pull requests in the ``master`` branch.
Always prepend your commits with framework name:

.. code-block:: bash

    Django: Implemented sign in functionality

Read `contribution guide <https://github.com/komarserjio/notejam/blob/master/contribute.rst>`_ for details.
