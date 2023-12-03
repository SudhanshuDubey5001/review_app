import 'package:flutter/material.dart';
import 'package:review_app/Controller.dart';
import 'package:review_app/models/Review.dart';
import 'package:review_app/utils/Utils.dart';

import '../utils/Constants.dart';

class DocumentSubmitPage extends StatefulWidget {
  const DocumentSubmitPage({super.key});

  @override
  State<DocumentSubmitPage> createState() => _DocumentSubmitPageState();
}

class _DocumentSubmitPageState extends State<DocumentSubmitPage> {
  Controller controller = Controller();

  // Controller for text input fields
  TextEditingController nameController = TextEditingController();
  TextEditingController fieldController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

  void _chooseFile() {}

  void _submitForm() {
    controller.reviewList.add(Review(
        id: controller.reviewList.length+1,
        research_name: titleController.text,
        submission_date: Utils.getFormattedDate(),
        admin_id: 6*controller.reviewList.length,
        document_url: "R45677",
        researcher_id: 4*controller.reviewList.length,
        status: Status.PENDING));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document Submission'),
        backgroundColor: Constants.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name of Researcher'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: fieldController,
              decoration: InputDecoration(labelText: 'Field of Research'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title of Research'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: commentsController,
              decoration:
                  InputDecoration(labelText: 'Comments about the Document'),
              maxLines: 3,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _chooseFile,
              child: Text('Choose File'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
