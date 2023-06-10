import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wander_hub/navBar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LogisticBottomBarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo_transparent.png',
        ),
        elevation: 0,
        // backgroundColor: Colors.,
        // title: Image.asset(
        //   'assets/wanderhubIcon.jpg',
        // ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                width: double.infinity,
                color: Colors.indigo[800],
                child: Column(
                  children: [
                    Text(
                      "Shadan Kazmi",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '@shadankazmi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
