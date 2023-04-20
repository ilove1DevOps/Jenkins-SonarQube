
#!/bin/bash 
cd /django/notejam
./manage.py syncdb
./manage.py migrate
./manage.py runserver 0.0.0.0:80
