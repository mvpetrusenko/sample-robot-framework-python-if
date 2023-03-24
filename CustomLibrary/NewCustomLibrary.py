from robot.api import logger

class NewCustomLibrary():
    def print_message(self, message):
        logger.warn(message)