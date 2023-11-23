import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://i3.wp.com/static.vecteezy.com/system/resources/previews/008/253/247/original/colorful-calendar-year-2023-design-template-simple-and-clean-design-calendar-for-2023on-white-background-for-organization-and-business-week-starts-sunday-simple-template-eps10-vector.jpg?strip=all',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.network(
              'https://i3.wp.com/static.vecteezy.com/system/resources/previews/008/253/247/original/colorful-calendar-year-2023-design-template-simple-and-clean-design-calendar-for-2023on-white-background-for-organization-and-business-week-starts-sunday-simple-template-eps10-vector.jpg?strip=all',
            ),
          ),
        ),
      ),
    );
  }
}
