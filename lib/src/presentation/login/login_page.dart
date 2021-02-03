import 'package:andrei_hodis/src/actions/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/presentation/mixins/dialog_mixin.dart';
import 'package:andrei_hodis/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _onResponse(AppAction action) {
    if (action is LoginError) {
      showError(context, 'Sing in failed', action.error);
    } else if (action is LoginWithGoogleError) {
      showError(context, 'Sign in with Google failed', action.error);
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
                  const SizedBox(height: 8.0),
                  Text.rich(
                    TextSpan(
                      text: 'Forgot password ?',
                      style: const TextStyle(fontSize: 16.0),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, AppRoutes.resetPassword);
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
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(
                              Login(
                                email: _email.text,
                                password: _password.text,
                                response: _onResponse,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  const Divider(height: 24.0),
                  const Text(
                    'Or sign in with',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xFFDB4437),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(LoginWithGoogle(_onResponse));
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[400],
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.phoneAlt,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                print('HAUS - phone');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                print('HAUS - facebook');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'You don\'t have an account? ',
                        style: const TextStyle(fontSize: 16.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign up!',
                            style: TextStyle(
                              color: Colors.amber[800],
                              fontSize: 16.0,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.signUp);
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
