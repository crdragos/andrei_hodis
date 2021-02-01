import 'package:andrei_hodis/src/actions/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/presentation/mixins/dialog_mixin.dart';
import 'package:andrei_hodis/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();

  void _onResponse(BuildContext context, AppAction action) {
    if (action is SignUpSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is SignUpError) {
      showError(context, 'Sign up failed', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          child: Builder(
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.amber[800],
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/logo.jpg',
                        height: MediaQuery.of(context).size.height * .2,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(hintText: 'email'),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (!value.contains('@') || !value.contains('.')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextFormField(
                      controller: _displayName,
                      decoration: const InputDecoration(
                        hintText: 'username',
                      ),
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (value.length < 3) {
                          return 'Please try a better username';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextFormField(
                      controller: _password,
                      decoration: const InputDecoration(
                        hintText: 'password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Please try a better password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: TextFormField(
                      controller: _phoneNumber,
                      decoration: const InputDecoration(hintText: 'phone'),
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (value.length != 10) {
                          return 'Please try a valid phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.amber[800],
                      ),
                      child: FlatButton(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(SignUp(
                              email: _email.text,
                              password: _password.text,
                              displayName: _displayName.text,
                              phoneNumber: _phoneNumber.text,
                              response: (AppAction action) {
                                _onResponse(context, action);
                              },
                            ));
                          }
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'Already have an account? ',
                        style: const TextStyle(fontSize: 16.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign in!',
                            style: TextStyle(
                              color: Colors.amber[800],
                              fontSize: 16.0,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
