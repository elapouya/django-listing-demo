This is a demo for `django-listing <https://github.com/elapouya/django-listing>`_  Django App

To run the demo with docker
===========================

::

    docker run -p 8123:8123 elapouya/django-listing-demo

Open your browser at this url : http://localhost:8123

If you do not have docker yet, to install it on Linux, just use this command::

    curl -sSL https://get.docker.com/ | sh

Otherwise, you can upload from here : https://docs.docker.com/get-docker/



To run the demo as a developper
===============================

Clone the demo code
-------------------

::

    git clone https://github.com/elapouya/django-listing-demo.git

Install pipenv
--------------

If not already done ::

    pip install pipenv


Install python environment
--------------------------

In the directory where are located Pipefile and manager.py ::

    pipenv sync


Activate environment
--------------------

::

    pipenv shell


Create database
---------------

::

    ./manage.py migrate


Install demo data
-----------------

::

    ./manage.py inject_listing_demo_data


Compile translation messages
----------------------------

::

    ./manage.py compilemessages


Collect static files
--------------------

::

    ./manage.py collectstatic --noinput

Note : static files are served with whitenoise django app

Run the demo
------------

::

    ./manage.py runserver

Note : by default ``settings.DEBUG = False`` to be able to make some speed tests