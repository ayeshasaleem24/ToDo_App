import 'package:flutter/material.dart';
import 'package:todo/loginscreen.dart';
import 'package:todo/registerscreen.dart';

class WelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        // Add your back button functionality here
                      },
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 8), // Adjust the height as needed
                Text(
                  "Welcome to UpTodo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Please login to your account or create a new account to continue",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () { 
                          Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 131, 108, 196),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: OutlinedButton(
              onPressed: () {
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color:Color.fromARGB(255, 131, 108, 196),),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
