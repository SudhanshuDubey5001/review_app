import 'package:flutter/material.dart';
import 'package:review_app/pages/AdminPage.dart';
import 'package:review_app/pages/DocumentSubmitPage.dart';
import 'package:review_app/pages/ResearcherPage.dart';
import '../utils/Routes.dart';
import 'Home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Research and Innovation Review',
      initialRoute: Routes.HOME,
      routes: {
        Routes.HOME: (context) => const HomePage(),
        Routes.RESEARCHER: (context) => const ResearcherPage(),
        Routes.DOCUMENT_SUBMIT: (context) => const DocumentSubmitPage(),
        Routes.ADMIN: (context) => const AdminPage(),
      },
    );
  }
}
