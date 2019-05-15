#! /usr/bin/python3

from server import FlaskServer
from models.model import Model
from hw_controllers.motor_controller import MotorController
from pusher_server import PusherContainer
from threading import Thread
import signal


def flask_server():
    flaskServer = FlaskServer()
    flaskServer.start()
    
def pusher_server():
    pusherContainer = PusherContainer()
    pusherContainer.connect()


if __name__ == '__main__':
    flask_thread = Thread(target=flask_server)
    pusher_thread = Thread(target=pusher_server)

    flask_thread.start()
    pusher_thread.start()

