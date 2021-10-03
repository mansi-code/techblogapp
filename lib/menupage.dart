import 'package:flutter/material.dart';

class menupage extends StatelessWidget {
  static String id = 'menupage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Choose an option',
                style: TextStyle(fontSize: 53, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'technews');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                // ignore: prefer_const_constructors
                child: Image(
                  width: 450,
                  image: AssetImage('images/technews.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'scholarships');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  width: 450,
                  image: AssetImage('images/scholarships.jpg'),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
