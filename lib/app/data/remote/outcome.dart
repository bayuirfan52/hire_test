class Outcome<T> {
  Outcome({
    this.isFailure = false,
    this.errorMessages,
  });

  bool isFailure;
  int? statusCode;
  dynamic errorMessages;
  T? body;
}
