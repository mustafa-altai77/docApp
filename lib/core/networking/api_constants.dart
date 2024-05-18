class ApiConstants {
  static const String apiBaseurl = "https://vcare.integration25.com/api/";
  static const String login = "auth/login";
  static const String register = "auth/register";
  static const String getAllSpecialization = "specialization/index";
  static const String getDoctors = "doctor/index";
  static const String token =
      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE1NTE3MTA3LCJleHAiOjE3MTU1MjA3MDcsIm5iZiI6MTcxNTUxNzEwNywianRpIjoid214YlQ2RWxZNjQzSjRJNiIsInN1YiI6IjEwNzkiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.aJSrenYjdO6DBMH7URsrIFkfRP6ZbASuN6UN65piQsk";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
