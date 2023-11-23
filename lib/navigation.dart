import 'package:flutter/material.dart';
import 'package:todo/home.dart';
import 'package:todo/calender.dart';
import 'package:todo/addtask.dart';
import 'package:todo/profilescreen.dart';
import 'package:todo/Focus.dart';
import 'package:todo/setting.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;

  List<Widget> _pages = [
    Center(
      child:  Home(),
    ),
    Center(
       child:  Calender(),
    ),
    Center(
      child:  AddScreen(),
    ),
    Center(
      child:  FocusView(),
    ),
      Center(
      child:  ProfileView(),
    ),

  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "Index",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.black),
            label: "calender",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
            label: "Add a Task",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time, color: Colors.black),
            label: "Focuse",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: "Profile",
          ),
        ],
      ),
    );
  }
AppBar _buildAppBar() {
  if (_selectedTab == 0) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black),
        onPressed: () {},
      ),
      title: Center(
        child: Text(
          'Index',
          style: TextStyle(color: Colors.black),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 16.0), // Add padding here
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/thumbnails/030/557/655/small/ai-generative-beautiful-asian-muslim-girl-wearing-hijab-photo.jpg',
            ),
          ),
        ),
      ],
    );
  }
else if (_selectedTab == 1) {
      return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      );
    } else if (_selectedTab == 2) {
      return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
      );
    } else if (_selectedTab == 3){
      return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      );
    }else {
      return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Center(
        child: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
               Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => SettingsView()),
               );
            },
          ),
        ],
      );
    }
  }
}
