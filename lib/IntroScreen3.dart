import 'package:flutter/material.dart';
import 'package:todo/IntroScreen2.dart';
import 'package:todo/Welcomescreen.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle SKIP button press
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => IntroScreen2()),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color here
                  ),
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              "https://img.lovepik.com/element/45012/1940.png_860.png",
              height: 300, // Keep the height as needed
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 3,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 30,
                    height: 3,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 30,
                    height: 3,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Orgonaize your tasks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "You can organize your daily tasks by adding your tasks into separate categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
           SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle BACK button press
                           Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => IntroScreen2()),
                  );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Set the background color here
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "BACK",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle NEXT button press
                               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => WelScreen()),
                  );
                    },
                     style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 110, 84, 168), // Set the background color here
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
