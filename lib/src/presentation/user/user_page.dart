import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/containers/auth/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Date Personale'),
          actions: <Widget>[
            GestureDetector(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Salveaza',
                    style: TextStyle(
                      color: Colors.amber[800],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              onTap: () {
                print('haus');
              },
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
                              : '${user.displayName[0]}',
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
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'phone',
                ),
              ),
              const Spacer(),
              Center(
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width * .5,
                  color: Colors.amber[800],
                  child: FlatButton(
                    child: const Text(
                      'Sign out',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(const Logout());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
