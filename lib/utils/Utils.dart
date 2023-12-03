import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/Review.dart';

class Utils{
  static MaterialColor setStatusColor(Review review) {
      switch (review.status) {
        case Status.APPROVED:
          return Colors.green;
        case Status.REJECT:
          return Colors.red;
        case Status.PENDING:
          return Colors.grey;
      }
      return Colors.brown;
    }

    static String getFormattedDate() {
      DateTime now = DateTime.now();
      String formattedDate = DateFormat('dd-MM-yyyy').format(now);
      return formattedDate;
    }
}