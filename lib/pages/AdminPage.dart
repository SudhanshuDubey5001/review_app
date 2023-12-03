import 'package:flutter/material.dart';
import 'package:review_app/Controller.dart';
import 'package:review_app/pages/components/admin_review_card.dart';
import 'package:review_app/utils/Constants.dart';

import '../models/Review.dart';
import '../utils/Routes.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  static Controller controller = Controller();
  Review _review = controller.reviewList[0];
  bool updateStatusVisibility = false;

  void onDownloadButtonPressed(String url) {
    print("Download button pressed -> $url");
  }

  void onUpdateStatusButtonPressed(Review review) {
    setState(() {
      _review = review;
      updateStatusVisibility = true;
    });
  }

  void changeStatus(String status) {
    setState(() {
      updateStatusVisibility = false;
      controller.reviewList.forEach((review) => {
            print("reviewID = ${review.id} and _reviewID = ${_review.id}"),
            if (review.id == _review.id)
              {
                review.status = status,
                print("Research:${review.research_name} status changed to ${review.status}")
              }
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        centerTitle: true,
        backgroundColor: Constants.primaryColor,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (String result) async {
              if (result == 'signOut') {
                Navigator.pushReplacementNamed(context, Routes.HOME);
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'signOut',
                child: Text('Sign Out'),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: controller.reviewList.length,
              itemBuilder: (context, index) {
                return adminReviewCard(
                    controller.reviewList[index],
                    (url) => onDownloadButtonPressed(url),
                    (review) => onUpdateStatusButtonPressed(review));
              }),
          Visibility(
              visible: updateStatusVisibility,
              child: Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Card(
                  surfaceTintColor: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white
                            ),
                            onPressed: () => changeStatus(Status.APPROVED),
                            child: Text("Approve")),
                        SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white
                            ),
                            onPressed: () => changeStatus(Status.REJECT),
                            child: Text("Reject")),
                        SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white
                            ),
                            onPressed: () => changeStatus(Status.PENDING),
                            child: Text("Pending")),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
