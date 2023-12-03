import 'package:flutter/material.dart';

import '../../models/Review.dart';
import '../../utils/Utils.dart';

Widget reviewCard(Review review) {
  return Container(
    child: Card(
      surfaceTintColor: Colors.white,
      elevation: 10,
      margin: EdgeInsets.all(20.0),
      child: ListTile(
        title: Text(review.research_name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Submission Date: ${review.submission_date}'),
            Text('Document ID: ${review.document_url}'),
            Row(
              children: [
                Text("Status: "),
                SizedBox(
                  width: 5,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    color: Utils.setStatusColor(review),
                    child: Text(
                      "${review.status}",
                      style: const TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
        onTap: () {
          // Handle tap on the review item
          // You can navigate to a detailed view or perform other actions
        },
      ),
    ),
  );
}
