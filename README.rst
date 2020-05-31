To run the demo with docker
===========================

::

    docker run -p 8123:8123 elapouya/django-listing-demo

Open your browser at this url : http://localhost:8123


To run the demo as a developper
===============================

after cloning elapouya/django-listing-demo on github :

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