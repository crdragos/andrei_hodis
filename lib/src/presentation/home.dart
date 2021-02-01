import 'package:andrei_hodis/src/containers/index.dart';
import 'package:andrei_hodis/src/models/auth/index.dart';
import 'package:andrei_hodis/src/presentation/home/home_page.dart';
import 'package:andrei_hodis/src/presentation/login_page/login_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser user) {
      if (user == null) {
        return const LoginPage();
      } else {
        return const HomePage();
      }
    });
  }
}
