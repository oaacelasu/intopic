import "package:fpdart/fpdart.dart";
import "package:intopic/features/common/domain/failures/failure.dart";
import "package:intopic/features/common/domain/values/email_validator.dart";

Either<Failure, String> validateStringLength(
  String input,
  int length,
) {
  if (input.length == length) {
    return right(input);
  } else {
    return left(
      Failure.unprocessableEntity(message: "Field must contain $length characters."),
    );
  }
}

Either<Failure, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      Failure.unprocessableEntity(message: "Field must not exceed $maxLength characters."),
    );
  }
}

Either<Failure, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      Failure.unprocessableEntity(message: "Field must contain at least $minLength characters."),
    );
  }
}

Either<Failure, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(Failure.unprocessableEntity(message: "Field must not be empty."));
  } else {
    return right(input);
  }
}

Either<Failure, String> validateSingleLine(String input) {
  if (input.contains("\n")) {
    return left(Failure.unprocessableEntity(message: "Field must not contain new lines."));
  } else {
    return right(input);
  }
}

Either<Failure, String> validateNumber(String input) {
  const String numberRegex = r"^[0-9]+$";
  if (RegExp(numberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(Failure.unprocessableEntity(message: "Field must contain only numbers."));
  }
}

Either<Failure, int> validatePositiveNumber(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(Failure.unprocessableEntity(message: "Field must contain only positive numbers."));
  }
}

RegExp _email = RegExp(
  r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$",
);

/// check if the string [str] is an email
bool isEmail(String str) {
  return _email.hasMatch(
        str.toLowerCase(),
      ) &&
      EmailValidator.validate(str);
}

Either<Failure, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  } else {
    return left(Failure.unprocessableEntity(message: "Field must contain a valid email address."));
  }
}
