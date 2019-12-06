import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/disease.dart';
import 'camera.dart';

class DiseaseScreen extends StatelessWidget {
  static String routeName = '/disease';

  Widget _buildChip(String plant) {
    switch (plant) {
      case 'Apple':
        {
          return Chip(
            backgroundColor: Colors.green.shade100,
            avatar: CircleAvatar(
              backgroundColor: Colors.green.shade800,
              child: Text(''),
            ),
            label: Text('Apple',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 10.0,
                    color: Colors.green.shade500)),
          );
        }
        break;

      case 'Corn':
        {
          return Chip(
            backgroundColor: Colors.yellow.shade100,
            avatar: CircleAvatar(
              backgroundColor: Colors.yellow.shade800,
              child: Text(''),
            ),
            label: Text('Corn',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 10.0,
                    color: Colors.yellow.shade800)),
          );
        }
        break;

      case 'Grapes':
        {
          return Chip(
            backgroundColor: Colors.purple.shade100,
            avatar: CircleAvatar(
              backgroundColor: Colors.purple.shade800,
              child: Text(''),
            ),
            label: Text('Grapes',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 10.0,
                    color: Colors.purple.shade500)),
          );
        }
        break;

      case 'Potato':
        {
          return Chip(
            backgroundColor: Colors.brown.shade100,
            avatar: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: Text(''),
            ),
            label: Text('Potato',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 10.0,
                    color: Colors.brown.shade500)),
          );
        }
        break;

      case 'Tomato':
        {
          return Chip(
            backgroundColor: Colors.red.shade100,
            avatar: CircleAvatar(
              backgroundColor: Colors.red.shade800,
              child: Text(''),
            ),
            label: Text('Tomato',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 10.0,
                    color: Colors.red.shade500)),
          );
        }
        break;

      default:
        {
          return Container();
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final DiseaseArguments args = ModalRoute.of(context).settings.arguments;
    var details = args.details;
    print(details);

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
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height + 250,
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Hero(
                        tag: details.name,
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(details.image),
                                    fit: BoxFit.fill)),
                            height: 250.0,
                            width: MediaQuery.of(context).size.width),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Text(details.name,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold)),
                        _buildChip(args.plant),
                        SizedBox(height: 10.0),
                        Text(details.desc,
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16)),
                        SizedBox(height: 20.0),
                        Text('Solution',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 20.0),
                        Container(
                          height: 300,
                          child: ListView.builder(
                              itemCount: details.solution.length,
                              itemBuilder: (ctx, index) {
                                var item = details.solution[index];
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${index + 1})  $item',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16)),
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(height: 10.0),
                        Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                CameraScreen.routeName,
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(35.0),
                                        bottomRight: Radius.circular(35.0)),
                                    color: Colors.green),
                                height: 50.0,
                                child: Center(
                                  child: Text('Check',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat')),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ])),
        ));
  }
}

class DiseaseArguments {
  String plant;
  Disease details;

  DiseaseArguments(this.plant, this.details);
}
