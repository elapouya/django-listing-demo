To run the demo
===============

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


Run the demo
------------

::

    ./manage.py runserver