
import os

from flask import Flask
from flask import jsonify
from flask import request


class FlaskServer:

    def __init__(self, GPIO, dbController):
        self.GPIO = GPIO
        self.db = dbController

    app = Flask(__name__)
    request_error = {
        'connection': 'local',
        'status': 'online',
        'message': 'error request type'
    }

    @app.route('/', methods=['GET', 'POST'])
    def home():
        response = {
            'status': 'online',
            'connection': 'local'
        }
        if request.method == 'GET' or request.method == 'POST':
            return jsonify(response)

    # FEEDING ROUTE
    @app.route('/feed', methods=['GET', 'POST'])
    def feed():
        if request.method == 'GET' or request.method == 'POST':
            # device feed() #not yet completed
            response = {
                'connection': 'local',
                'status': 'success',
                'message': 'fed successfully'
            }

            return jsonify(response)

        else:
            response = request_error
            return jsonify(response)

    # USER SETUP
    @app.route('/restart')
    def restart():
        os.system("sudo reboot")

    @app.route('/shutdown')
    def shutdown():
        os.system("sudo poweroff")

    def start(self):
        self.app.run(port=8848, debug=True)
