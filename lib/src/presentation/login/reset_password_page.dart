import 'package:andrei_hodis/src/actions/index.dart';
import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/presentation/mixins/dialog_mixin.dart';
import 'package:andrei_hodis/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();

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
                  const SizedBox(height: 32.0),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.amber[800],
                      ),
                      child: FlatButton(
                        child: const Text(
                          'Reset password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(ResetPassword(email: _email.text));
                            Navigator.pop(context);
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
                        text: 'Go back to ',
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
