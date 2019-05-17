import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:petfeed/src/data/exceptions/custom_exceptions.dart';
import 'package:petfeed/src/data/exceptions/device_not_found_exception.dart';
import 'package:petfeed/src/data/models/local_status/local_status.dart';
import 'package:petfeed/src/data/network/api_routes.dart';
import 'package:petfeed/src/data/network/local/pi_scanner.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class PiDataSource {
  final http.Client client;
  final SharedPreferences preferences;
  final PiScanner scanner;

  PiDataSource(this.client, this.preferences, this.scanner);

  Future<bool> ping() async {
    String ip = preferences.get('deviceIP');
    bool error = false;
    print(ip);
    bool found = false;

    try {
      if (ip == null) {
        print('no ip');
        found = await scanner.findDevice();
      } else {
        print('ip');
        final response = await client.post(ip).catchError((e) {
          error = true;
        });
        if (!error) {
          print('no-error');
          if (response.statusCode == 200)
            found = true;
          else
            found = false;
        } else {
          print('error');
          found = await scanner.findDevice();
        }
      }
    } catch (_) {
      print(_);
      found = false;
    }

    return found;
  }

  Future<LocalStatus> setWifi(
      {@required String ssid, @required String key}) async {
    bool status = await ping();

    if (status) {
      String ip = preferences.get('deviceIP');
      final response = await client.post(
        ip + LocalApiRoutes.WIFI_SETUP,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'ssid': '$ssid',
          'key': '$key',
        }),
      );

      if (response.statusCode == 200)
        return LocalStatus.fromJson(response.body);
      else
        throw WifiSetupException(response.body);
    } else {
      throw DeviceNotFoundException();
    }
  }
}