@ECHO OFF
cd ..
mkdir %1
cd %1
virtualenv env
call env\Scripts\activate.bat
pip install django
pip install djangorestframework
python env\Scripts\django-admin.py startproject %1 .
cd %1
python ..\env\Scripts\django-admin.py startapp %2
cd ..
python manage.py migrate
python manage.py createsuperuser