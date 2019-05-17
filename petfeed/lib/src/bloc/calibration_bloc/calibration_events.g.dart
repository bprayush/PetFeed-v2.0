// GENERATED CODE - DO NOT MODIFY BY HAND

part of calibration_events;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartHopper extends StartHopper {
  @override
  final String deviceID;
  @override
  final String token;

  factory _$StartHopper([void Function(StartHopperBuilder) updates]) =>
      (new StartHopperBuilder()..update(updates)).build();

  _$StartHopper._({this.deviceID, this.token}) : super._() {
    if (deviceID == null) {
      throw new BuiltValueNullFieldError('StartHopper', 'deviceID');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('StartHopper', 'token');
    }
  }

  @override
  StartHopper rebuild(void Function(StartHopperBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartHopperBuilder toBuilder() => new StartHopperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartHopper &&
        deviceID == other.deviceID &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deviceID.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StartHopper')
          ..add('deviceID', deviceID)
          ..add('token', token))
        .toString();
  }
}

class StartHopperBuilder implements Builder<StartHopper, StartHopperBuilder> {
  _$StartHopper _$v;

  String _deviceID;
  String get deviceID => _$this._deviceID;
  set deviceID(String deviceID) => _$this._deviceID = deviceID;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  StartHopperBuilder();

  StartHopperBuilder get _$this {
    if (_$v != null) {
      _deviceID = _$v.deviceID;
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartHopper other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StartHopper;
  }

  @override
  void update(void Function(StartHopperBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartHopper build() {
    final _$result =
        _$v ?? new _$StartHopper._(deviceID: deviceID, token: token);
    replace(_$result);
    return _$result;
  }
}

class _$StopHopper extends StopHopper {
  @override
  final String deviceID;
  @override
  final String token;

  factory _$StopHopper([void Function(StopHopperBuilder) updates]) =>
      (new StopHopperBuilder()..update(updates)).build();

  _$StopHopper._({this.deviceID, this.token}) : super._() {
    if (deviceID == null) {
      throw new BuiltValueNullFieldError('StopHopper', 'deviceID');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('StopHopper', 'token');
    }
  }

  @override
  StopHopper rebuild(void Function(StopHopperBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopHopperBuilder toBuilder() => new StopHopperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopHopper &&
        deviceID == other.deviceID &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deviceID.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StopHopper')
          ..add('deviceID', deviceID)
          ..add('token', token))
        .toString();
  }
}

class StopHopperBuilder implements Builder<StopHopper, StopHopperBuilder> {
  _$StopHopper _$v;

  String _deviceID;
  String get deviceID => _$this._deviceID;
  set deviceID(String deviceID) => _$this._deviceID = deviceID;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  StopHopperBuilder();

  StopHopperBuilder get _$this {
    if (_$v != null) {
      _deviceID = _$v.deviceID;
      _token = _$v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopHopper other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopHopper;
  }

  @override
  void update(void Function(StopHopperBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopHopper build() {
    final _$result =
        _$v ?? new _$StopHopper._(deviceID: deviceID, token: token);
    replace(_$result);
    return _$result;
  }
}

class _$CalibrationSuccess extends CalibrationSuccess {
  factory _$CalibrationSuccess(
          [void Function(CalibrationSuccessBuilder) updates]) =>
      (new CalibrationSuccessBuilder()..update(updates)).build();

  _$CalibrationSuccess._() : super._();

  @override
  CalibrationSuccess rebuild(
          void Function(CalibrationSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalibrationSuccessBuilder toBuilder() =>
      new CalibrationSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalibrationSuccess;
  }

  @override
  int get hashCode {
    return 727886211;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CalibrationSuccess').toString();
  }
}

class CalibrationSuccessBuilder
    implements Builder<CalibrationSuccess, CalibrationSuccessBuilder> {
  _$CalibrationSuccess _$v;

  CalibrationSuccessBuilder();

  @override
  void replace(CalibrationSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CalibrationSuccess;
  }

  @override
  void update(void Function(CalibrationSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalibrationSuccess build() {
    final _$result = _$v ?? new _$CalibrationSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$CalibrationError extends CalibrationError {
  @override
  final String message;

  factory _$CalibrationError(
          [void Function(CalibrationErrorBuilder) updates]) =>
      (new CalibrationErrorBuilder()..update(updates)).build();

  _$CalibrationError._({this.message}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('CalibrationError', 'message');
    }
  }

  @override
  CalibrationError rebuild(void Function(CalibrationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalibrationErrorBuilder toBuilder() =>
      new CalibrationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalibrationError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalibrationError')
          ..add('message', message))
        .toString();
  }
}

class CalibrationErrorBuilder
    implements Builder<CalibrationError, CalibrationErrorBuilder> {
  _$CalibrationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CalibrationErrorBuilder();

  CalibrationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalibrationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CalibrationError;
  }

  @override
  void update(void Function(CalibrationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalibrationError build() {
    final _$result = _$v ?? new _$CalibrationError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new