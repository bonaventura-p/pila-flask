# start.sh
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export FLASK_APP=wsgi.py
export FLASK_DEBUG=1
export APP_CONFIG_FILE=config.py

flask run
