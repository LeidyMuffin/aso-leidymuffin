import logging
import time

logging.basicConfig(filename='/var/log/logging.log', level=logging.INFO)

while True:
    logging.info('Mensaje de registro')
    time.sleep(10)
