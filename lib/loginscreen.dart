import 'package:flutter/material.dart';
import 'package:todo/navigation.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isInputValid = false;

void onLoginPressed(BuildContext context) {
  String email = emailController.text;

  if (email.contains("@") && email.contains(".com") && passwordController.text.isNotEmpty) {
    setState(() {
      isInputValid = true;
    });

    // Navigate to the successful screen if login is successful
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigation()),
    );

    print("Correct Email");
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
  } else {
    setState(() {
      isInputValid = false;
    });
    print("Incorrect Email or Password");
  }

  emailController.text = "";
  passwordController.text = "";
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SizedBox(height: 4),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'please login or signup to continue our app',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                 suffixIcon: Icon(Icons.check_circle),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                 suffixIcon: Icon(Icons.check_circle),
                  labelText: 'Password',     
                ),
              ),
            ),
            Container(
             width: 400,
             height: 50, 
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),  // Adjust the radius to make it round
            ),
           child: ElevatedButton(
           onPressed: () {
          onLoginPressed(context);
    },
      style: ElevatedButton.styleFrom(
      primary: Colors.black, // Black color for the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25), // Matches the container's border radius
      ),
    ),
        child: Text('Login'),
       ),
     ),
        SizedBox(height: 20),
       Text('Or'),

       SizedBox(height: 20),
// Facebook Button
Container(
  width: 400,
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
  ),
  child: ElevatedButton(
    onPressed: () {
      onLoginPressed(context);
    },
    style: ElevatedButton.styleFrom(
      primary: const Color.fromARGB(255, 32, 97, 150),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.facebook,
          color: Colors.white,
        ),
        SizedBox(width: 10),
        Text('Continue with 𝐅𝐚𝐜𝐞𝐛𝐨𝐨𝐤'),
      ],
    ),
  ),
),

SizedBox(height: 10),

// Google Button
Container(
  width: 400,
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
  ),
  child: ElevatedButton(
    onPressed: () {
      // onGoogleLoginPressed(context);
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.white, // Set the desired color for the Google button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.g_translate, // You can change this to an appropriate Google icon
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text('Continue with 𝐆𝐨𝐨𝐠𝐥𝐞',
        style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
        ),
      ],
    ),
  ),
),
SizedBox(height: 10),

// Apple Button
Container(
  width: 400,
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
  ),
  child: ElevatedButton(
    onPressed: () {
      // onGoogleLoginPressed(context);
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.white, // Set the desired color for the button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.apple, 
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text('Continue with 𝐀𝐩𝐩𝐥𝐞',
        style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
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
