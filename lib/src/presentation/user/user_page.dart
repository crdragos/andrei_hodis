import 'package:andrei_hodis/src/containers/auth/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser user) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Date Personale'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.solidSave,
                color: Colors.amber[800],
              ),
              onPressed: () => print('haus'),
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.signOutAlt,
                color: Colors.amber[800],
              ),
              onPressed: () => print('logout'),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.transparent, shape: BoxShape.circle, border: Border.all(color: Colors.amber[800])),
                child: user.photoUrl == null
                    ? Center(
                        child: Text(
                          user.displayName.split(' ').length >= 2
                              ? '${user.displayName.split(' ')[0][0]}${user.displayName.split(' ')[1][0]}'
                              : '${user.displayName.split(' ')[0][0]}',
                          style: TextStyle(
                            color: Colors.amber[800],
                            fontSize: 82.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        child: Image.network(
                          '${user.photoUrl}',
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                //controller: _displayName,
                initialValue: user.displayName,
                decoration: const InputDecoration(
                  labelText: 'username',
                ),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                initialValue: user.email,
                decoration: const InputDecoration(
                  labelText: 'email',
                  enabled: false,
                ),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                initialValue: user.phoneNumber,
                decoration: const InputDecoration(
                  labelText: 'phone',
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
