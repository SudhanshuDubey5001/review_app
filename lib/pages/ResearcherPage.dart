import 'package:flutter/material.dart';
import 'package:review_app/pages/components/review_card.dart';
import 'package:review_app/utils/Constants.dart';
import 'package:review_app/utils/Routes.dart';

import '../Controller.dart';

class ResearcherPage extends StatefulWidget {
  const ResearcherPage({super.key});

  @override
  State<ResearcherPage> createState() => _ResearcherPageState();
}

class _ResearcherPageState extends State<ResearcherPage> {

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Researcher Dashboard'),
          backgroundColor: Constants.primaryColor,
          foregroundColor: Colors.white,
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              onSelected: (String result) async{
                if (result == 'submit_document') {
                  Navigator.pushNamed(context, Routes.DOCUMENT_SUBMIT)
                      .then((value) {
                    setState(() {});
                  });
                } else if (result == 'signOut') {
                  Navigator.pushReplacementNamed(context, Routes.HOME);
                }
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem<String>(
                  value: 'submit_document',
                  child: Text('Submit Document'),
                ),
                const PopupMenuItem<String>(
                  value: 'signOut',
                  child: Text('Sign Out'),
                ),
              ],
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: controller.reviewList.length,
          itemBuilder: (context, index) {
            return reviewCard(controller.reviewList[index]);
          },
        ),
      ),
    );
  }
}
