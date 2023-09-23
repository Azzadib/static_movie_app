import 'package:flutter/material.dart';

String getYearFromDate(String dateString) {
  List<String> splited = dateString.split('/');
  if (splited.length >= 3) return splited[2];
  return '0';
}

String getDurationText(int duration) {
  int hours = duration ~/ 60;
  int minutes = duration % 60;
  return '${hours}h ${minutes}m';
}

Color getRatingColor(int rating) {
  if (rating >= 80) {
    return Colors.green;
  } else if (rating >= 60) {
    return Colors.yellow;
  } else {
    return Colors.red;
  }
}

Color getRatingBackgroundColor(int rating) {
  if (rating >= 80) {
    return Colors.green.withOpacity(0.3);
  } else if (rating >= 60) {
    return Colors.yellow.withOpacity(0.3);
  } else {
    return Colors.red.withOpacity(0.3);
  }
}
