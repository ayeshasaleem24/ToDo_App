//Splash Screen & IntroScreen 1
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/IntroScreen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroScreen1(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Change background color to black
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn1.iconfinder.com/data/icons/ui-colored-2-of-3/100/UI_2__20-512.png',
              width: 100,
              height: 100,
              color: Colors.blue, // Set the image color to blue
            ),
            SizedBox(height: 20),
            Text(
              "UP TO DO",
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 40,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none, // Remove underline
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroScreen1 extends StatelessWidget {
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
              "https://img.lovepik.com/element/45009/2241.png_860.png",
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
                    color: Colors.blue,
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
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Manage your tasks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "You can easily manage all of your daily tasks in DoMe for free",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
                   MaterialPageRoute(builder: (context) => IntroScreen2()),
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
