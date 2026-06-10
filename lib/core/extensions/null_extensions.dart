extension ValidNullString on String? {
  String get orEmptyString {
    return this ?? '';
  }

  String orChangeString(String value) {
    return this ?? value;
  }

  String get orDefaultColor {
    return this ?? '#000000';
  }
}

extension ValidNullInt on int? {
  int get orIntZero {
    return this ?? 0;
  }
}

extension ValidNullDouble on double? {
  double get orDoubleZero {
    return this ?? 0;
  }
}

extension ValidNullListDouble on List<double>? {
  List<double> get orDoubleList {
    return this ?? [0.0, 0.0];
  }
}

extension ValidNullBoolean on bool? {
  bool get orFalse {
    return this ?? false;
  }
}

extension ValidEmptyString on String {
  String orOtherString(String value) {
    return isEmpty ? value : this;
  }
}
