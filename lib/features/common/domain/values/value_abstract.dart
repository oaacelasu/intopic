import 'package:fpdart/fpdart.dart';
import 'package:intopic/features/common/domain/failures/failure.dart';
import 'package:intopic/features/common/domain/values/value_validators.dart';

/// Provides specification for value objects
abstract class ValueAbstract<T> {
  ///
  const ValueAbstract();

  /// getter for value
  Either<Failure, T> get value;

  T get dflt;

  T getOrElse(T dflt) {
    return value.getOrElse((_) => dflt);
  }

  T getOrEmpty() {
    return value.getOrElse((_) => dflt);
  }

  T? getOrNull() {
    return getOrEmpty() != dflt ? getOrEmpty() : null;
  }

  bool get isValid => value.isRight();

  @override
  String toString() => value.fold((l) => l.error, (r) => r.toString());

  /// Form validate handler
  String? get error => value.fold((l) => l.error, (r) => null);
}

const Either<Failure, String> emptyStringValue = Left<Failure, String>(Failure.empty());

class Name extends ValueAbstract<String> {
  factory Name(String? input) {
    return input != null
        ? Name._(
            validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
          )
        : const Name.empty();
  }

  const Name.empty()
      : value = emptyStringValue,
        dflt = '';

  const Name._(this.value): dflt = '';

  @override
  final Either<Failure, String> value;
  @override
  final String dflt;

  static const int maxLength = 300;

  bool matches(String regex) {
    return value.getOrElse((_) => '').toLowerCase().contains(regex.toLowerCase());
  }
}

class EmailAddress extends ValueAbstract<String> {
  factory EmailAddress(String? input) {
    return input != null
        ? EmailAddress._(
            validateEmailAddress(input),
          )
        : const EmailAddress.empty();
  }

  const EmailAddress.empty()
      : value = emptyStringValue,
        dflt = '';

  const EmailAddress._(this.value): dflt = '';

  @override
  final Either<Failure, String> value;
  @override
  final String dflt;

  static const int maxLength = 300;
}

class Password extends ValueAbstract<String> {
  factory Password(String? input) {
    return input != null
        ? Password._(
            validateMinStringLength(input, minLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
          )
        : const Password.empty();
  }

  const Password.empty()
      : value = emptyStringValue,
        dflt = '';

  const Password._(this.value): dflt = '';

  @override
  final Either<Failure, String> value;
  @override
  final String dflt;

  static const int minLength = 6;
  static const int maxLength = 20;
}
