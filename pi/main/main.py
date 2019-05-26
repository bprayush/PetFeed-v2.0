#! /usr/bin/python3

from server import FlaskServer
from models.model import Model
import RPi.GPIO as GPIO
from hw_controllers.motor_controller import MotorController
from pusher_server import PusherContainer
from threading import Thread
import signal

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

motorController = MotorController(GPIO=GPIO)


def flask_server():
    flaskServer = FlaskServer(motorController=motorController)
    flaskServer.start()


def pusher_server():
    pusherContainer = PusherContainer(motorController=motorController)
    pusherContainer.connect()


if __name__ == '__main__':
    flask_thread = Thread(target=flask_server)
    pusher_thread = Thread(target=pusher_server)

    flask_thread.start()
    pusher_thread.start()
