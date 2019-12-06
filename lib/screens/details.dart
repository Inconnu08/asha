import 'package:asha/models/corn.dart';
import 'package:asha/screens/pick_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/apple.dart';
import '../models/disease.dart';
import '../models/tomato.dart';
import 'disease.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  List<Disease> getDiseases(String plant) {
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
    final DetailArguments args = ModalRoute.of(context).settings.arguments;
    var diseases = getDiseases(args.title);
    print(diseases);

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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 0.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: // Hero(
                    //tag: widget.heroTag,
                    // child:
                    Hero(
                  tag: args.title,
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(args.image),
                              fit: BoxFit.cover)),
                      height: 200.0,
                      width: 200.0),
                )),
            Positioned(
                top: 190.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(args.title,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Container(
                      height: (MediaQuery.of(context).size.width / 1.5),
                      child: ListView.builder(
                          itemCount: diseases.length,
                          itemBuilder: (ctx, index) {
                            var item = diseases[index];
                            return Material(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    ctx,
                                    DiseaseScreen.routeName,
                                    arguments: DiseaseArguments(
                                      args.title,
                                      item,
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 210,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(item.image),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(item.name,
                                            style: TextStyle(fontSize: 16)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            PickScreen.routeName,
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
                ))
          ])
        ]));
  }
}

class DetailArguments {
  String title;
  String image;

  DetailArguments(this.title, this.image);
}
