class Error {
  final String error;
  Error({required this.error});
}

class ServerError extends Error {
  ServerError({required super.error});
}
