import 'package:asha/screens/camera.dart';
import 'package:asha/screens/details.dart';
import 'package:asha/screens/disease.dart';
import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/pick_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.greenAccent,
          fontFamily: 'Nunito',
          textTheme: TextTheme(
            title: TextStyle(
                fontSize: 25, fontFamily: 'Rubik', fontWeight: FontWeight.bold),
          )),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        DetailsScreen.routeName: (ctx) => DetailsScreen(),
        CameraScreen.routeName: (ctx) => CameraScreen(),
        DiseaseScreen.routeName: (ctx) => DiseaseScreen(),
        PickScreen.routeName: (ctx) => PickScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      },
    );
  }
}
