import 'package:andrei_hodis/src/actions/auth/index.dart';
import 'package:andrei_hodis/src/containers/auth/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String _displayName;
  String _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser user) {
      return Form(
        child: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                title: const Text('Date Personale'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.check,
                      color: Colors.greenAccent,
                    ),
                    onPressed: () {
                      if (Form.of(context).validate()) {
                        StoreProvider.of<AppState>(context).dispatch(UpdateUserInfo(
                          user: user,
                          displayName: _displayName ?? user.displayName,
                          phoneNumber: _phoneNumber ?? user.phoneNumber,
                        ));
                      }
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
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.amber[800])),
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
                      initialValue: user.displayName,
                      decoration: const InputDecoration(
                        labelText: 'username',
                      ),
                      onChanged: (String value) {
                        _displayName = value;
                      },
                      validator: (String value) {
                        if (value.length < 3) {
                          return 'Username must have at least 3 characters';
                        }
                        return null;
                      },
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
                      onChanged: (String value) {
                        _phoneNumber = value;
                      },
                      validator: (String value) {
                        if (value.length != 10) {
                          return 'Phone number must have 10 digits';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    const Spacer(),
                    Center(
                      child: Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width * .5,
                        color: Colors.redAccent,
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
          },
        ),
      );
    });
  }
}
