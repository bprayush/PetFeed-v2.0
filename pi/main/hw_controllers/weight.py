from .hx711 import HX711


class WeightSensor:
    ratio = 752.5

    def __init__(self, GPIO, dout_pin=21, pd_sck_pin=20):
        self.GPIO = GPIO
        self.hx = HX711(GPIO=GPIO, dout_pin=21, pd_sck_pin=20)
        self.hx.set_scale_ratio(self.ratio)

    def getWeight(self):
        return self.hx.get_weight_mean(10) - 13.5
