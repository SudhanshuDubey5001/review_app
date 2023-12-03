import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:review_app/models/Review.dart';
import 'package:review_app/utils/Constants.dart';
import '../../utils/Utils.dart';

Widget adminReviewCard(
    Review review,
    Function(String url) onDownloadButtonPressed,
    Function(Review review) onUpdateStatusButtonPressed) {
  return Card(
    elevation: 10,
    surfaceTintColor: Colors.white,
    margin: EdgeInsets.all(20),
    child: ListTile(
      title: Text('Research title: ${review.research_name}'),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Review ID: ${review.id}'),
              Text('Researcher ID: ${review.researcher_id}'),
              Text('Submission date: ${review.submission_date}'),
              Row(
                children: [
                  Text("Current Status"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => onDownloadButtonPressed(review.document_url),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.primaryColor,
                      foregroundColor: Colors.white),
                  child: Text(
                    'Download\nDocuments',
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () => onUpdateStatusButtonPressed(review),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.primaryColor,
                      foregroundColor: Colors.white),
                  child: Text('Update\nstatus'))
            ],
          )
        ],
      ),
    ),
  );
}
