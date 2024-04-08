// ignore_for_file: unused_field, prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers

class AppException implements Exception {
  final _prefix;
  final _message;

  AppException([this._prefix, this._message]);
}

class FetchDataException extends AppException {
  FetchDataException(_message) : super('Error during communication', _message);
}
