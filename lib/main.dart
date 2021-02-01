import 'package:andrei_hodis/src/models/index.dart';
import 'package:andrei_hodis/src/presentation/mixins/init_mixin.dart';
import 'package:andrei_hodis/src/presentation/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() => runApp(const AndreiHodis());

class AndreiHodis extends StatefulWidget {
  const AndreiHodis({Key key}) : super(key: key);

  @override
  _AndreiHodisState createState() => _AndreiHodisState();
}

class _AndreiHodisState extends State<AndreiHodis> with InitMixin<AndreiHodis> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Andrei Hodis',
              theme: ThemeData.dark(),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'Andrei Hodis',
            theme: ThemeData.dark(),
            home: Scaffold(
              body: Center(
                child: PhysicalModel(
                  color: Colors.amber[800],
                  elevation: 8,
                  shadowColor: Colors.amber,
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/logo.jpg',
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
