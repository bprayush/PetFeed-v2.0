// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(DeviceAccessToken.serializer)
      ..add(LocalSchedule.serializer)
      ..add(LocalStatus.serializer)
      ..add(Pet.serializer)
      ..add(Schedule.serializer)
      ..add(ScheduleStatus.serializer)
      ..add(Schedules.serializer)
      ..add(User.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LocalSchedule)]),
          () => new ListBuilder<LocalSchedule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Schedule)]),
          () => new ListBuilder<Schedule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
