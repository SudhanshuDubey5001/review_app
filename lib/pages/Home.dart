import 'package:flutter/material.dart';
import 'package:review_app/utils/Constants.dart';
import 'package:review_app/utils/Routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(50),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to Research \nand Innovation \nReview Application',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 34),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, Routes.ADMIN);
                            print('Login as Admin');
                          },
                          child: Text('Login as Admin'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constants.primaryColor,
                            foregroundColor: Colors.white
                          ),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.primaryColor,
                              foregroundColor: Colors.white
                          ),
                          onPressed: () {
                            // Handle researcher login
                            Navigator.pushReplacementNamed(context, Routes.RESEARCHER);
                            print('Login as Researcher');
                          },
                          child: Text('Login as Researcher'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Image(
                width: 500,
                height: 500,
                image: AssetImage('assets/background_pic.jpg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
