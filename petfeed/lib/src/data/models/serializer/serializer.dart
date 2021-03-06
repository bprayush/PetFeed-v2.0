library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:petfeed/src/data/models/device_access_token/device_access_token.dart';
import 'package:petfeed/src/data/models/local_status/local_schedule.dart';
import 'package:petfeed/src/data/models/local_status/local_status.dart';
import 'package:petfeed/src/data/models/local_status/schedule_status.dart';
import 'package:petfeed/src/data/models/pet/pet.dart';
import 'package:petfeed/src/data/models/schedule/schedule.dart';
import 'package:petfeed/src/data/models/schedules/schedules.dart';
import 'package:petfeed/src/data/models/user/user.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  LocalStatus,
  User,
  DeviceAccessToken,
  Pet,
  BuiltList,
  Schedule,
  Schedules,
  DateTime,
  LocalSchedule,
  ScheduleStatus,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
