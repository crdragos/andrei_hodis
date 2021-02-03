import 'package:andrei_hodis/src/presentation/description/description_page.dart';
import 'package:andrei_hodis/src/presentation/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: <Widget>[
        const DescriptionPage(),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        const UserPage(),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (int index) {
          setState(() {
            _page = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plus),
            label: 'New Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.calendarAlt),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'My Account',
          )
        ],
        selectedItemColor: Colors.amber[800],
        selectedFontSize: 0.0,
      ),
    );
  }
}
