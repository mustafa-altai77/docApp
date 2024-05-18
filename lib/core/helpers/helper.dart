import 'package:intl/intl.dart';

class Helper {
  static String formatTime(String timeString) {
    DateTime dateTime = DateFormat("HH:mm:ss").parse(timeString);
    String formattedTime = DateFormat("h:mm a").format(dateTime);
    return formattedTime;
  }}