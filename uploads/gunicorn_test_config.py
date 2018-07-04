import multiprocessing

bind = "0.0.0.0:8080"
errorlog = '/home/box/web/gunicorn-error.log'
#errorlog = 'gunicorn-error.log'
loglevel = "info"
#workers = multiprocessing.cpu_count() * 2 + 1
workers = multiprocessing.cpu_count()