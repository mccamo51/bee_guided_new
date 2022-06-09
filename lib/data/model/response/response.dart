class Response {
  final String? message;
  final int statusCode;
  final Map? response;

  const Response({this.message, this.response, required this.statusCode});
}
