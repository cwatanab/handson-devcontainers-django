cd src

pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

python manage.py check
python manage.py makemigrations
python manage.py migrate

export DJANGO_SUPERUSER_USERNAME=admin
export DJANGO_SUPERUSER_EMAIL=dummy@localhost
export DJANGO_SUPERUSER_PASSWORD=admin
python manage.py createsuperuser --no-input

# python manage.py collectstatic --no-input
# python manage.py loaddata XXXX.json