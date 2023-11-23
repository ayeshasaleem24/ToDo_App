import 'package:flutter/material.dart';
import 'package:todo/navigation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<RegisterScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
     child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('Create a new account'),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  suffixIcon: Icon(Icons.check_circle),
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  Text(
                    'By creating an account, you agree to our terms & conditions.',
                    style: TextStyle(
                      color: Color.fromARGB(176, 59, 56, 56),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ElevatedButton(
                  onPressed: () {
             Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
               );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text('Register'),
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
      ),
    );
  }
}