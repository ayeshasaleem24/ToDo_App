import 'package:flutter/material.dart';

class FocusView extends StatefulWidget {
  const FocusView({Key? key}) : super(key: key);

  @override
  State<FocusView> createState() => _FocusViewState();
}

class _FocusViewState extends State<FocusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.ctfassets.net/n36b8lzdmgnp/WxRkQQUujYw81gyIOPqyD/12f69c86200a586af69efb4f435af51c/Screenshot_2022-09-07_at_15.14.29.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.network(
              'https://images.ctfassets.net/n36b8lzdmgnp/WxRkQQUujYw81gyIOPqyD/12f69c86200a586af69efb4f435af51c/Screenshot_2022-09-07_at_15.14.29.png',
            ),
          ),
        ),
      ),
    );
  }
}
