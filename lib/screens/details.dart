import 'package:asha/models/grapes.dart';
import 'package:asha/models/potato.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/apple.dart';
import '../models/corn.dart';
import '../models/disease.dart';
import '../models/tomato.dart';
import '../screens/pick_image.dart';
import './disease.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  static List<Disease> getDiseases(String plant) {
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
      case 'Grape':
        {
          return Grapes.diseases;
        }
        break;

      case 'Potato':
        {
          return Potato.diseases;
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
      body: ListView(
        children: [
          Stack(
            children: [
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
                ),
              ),
              Positioned(
                top: 190.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      args.title,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: (MediaQuery.of(context).size.width / 1.5),
                      padding: EdgeInsets.all(0),
                      child: ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount: diseases.length,
                          itemBuilder: (ctx, index) {
                            var item = diseases[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
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
                                    child: new Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 120.0,
                                          margin:
                                              new EdgeInsets.only(left: 36.0),
                                          decoration: new BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                new BorderRadius.circular(8.0),
                                            boxShadow: <BoxShadow>[
                                              new BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 10.0,
                                                offset: new Offset(0.0, 10.0),
                                              ),
                                            ],
                                          ),
                                          child: Center(child: Text(item.name)),
                                        ),
                                        Container(
                                          margin: new EdgeInsets.symmetric(
                                              vertical: 16.0),
                                          alignment:
                                              FractionalOffset.centerLeft,
                                          child: new CircleAvatar(
                                            child: ClipOval(
                                                child: Image.asset(item.image)),
                                            radius: 40,
                                          ),
                                        )
                                      ],
                                    )),
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DetailArguments {
  String title;
  String image;

  DetailArguments(this.title, this.image);
}
