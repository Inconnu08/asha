import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/apple.dart';
import '../models/disease.dart';
import '../models/tomato.dart';
import '../models/corn.dart';

@immutable
class ResultScreen extends StatelessWidget {
  static String routeName = '/result';

  var diseaseName = {
    'Corn_(maize)___healthy': ''
  };
  List<Disease> getReadAbleName(String plant) {
    switch (plant) {
      case 'Apple':
        {
          return Apple.diseases;
        }
        break;

      case 'Corn':
        {
          return Corn.diseases;
        }
        break;

      case 'Grapes':
        {
          //statements;
        }
        break;

      case 'Potato':
        {
          //statements;
        }
        break;

      case 'Tomato':
        {
          return Tomato.diseases;
        }
        break;

      default:
        {
          return Tomato.diseases;
        }
        break;
    }
    return Tomato.diseases;
  }

  @override
  Widget build(BuildContext context) {
    final ResultArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text('Asha',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            centerTitle: true),
        body: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: args.title == 'NoLeafDetected__TryAgain'
                ? Column(
                    children: <Widget>[
                      SizedBox(height: 100),
                      Image.asset('Assets/img/n.png', height: 250, width: 260),
                      SizedBox(height: 30),
                      Text('No leaf found. Try again!'),
                    ],
                  )
                : Text(args.title),
          ),
        ]));
  }
}

class ResultArguments {
  String title;

  ResultArguments(this.title);
}
