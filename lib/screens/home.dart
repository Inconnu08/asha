import 'package:asha/screens/pick_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './details.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              PickScreen.routeName,
            );
          },
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: Icon(Icons.camera_alt),
        ),
        appBar: AppBar(
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
              child: Card(
            elevation: 15,
            margin: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        width: 145,
                        padding: EdgeInsets.all(8.0),
                        child:
                            _buildCard(context, 'Assets/img/a.png', 'Apple')),
                    Container(
                        width: 145,
                        padding: EdgeInsets.all(8.0),
                        child: _buildCard(context, 'Assets/img/c.png', 'Corn')),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          width: 145,
                          padding: EdgeInsets.all(8.0),
                          child: _buildCard(
                              context, 'Assets/img/g.png', 'Grapes')),
                      Container(
                          width: 145,
                          padding: EdgeInsets.all(8.0),
                          child:
                              _buildCard(context, 'Assets/img/p.png', 'Potato'))
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          width: 146,
                          padding: EdgeInsets.all(8.0),
                          child: _buildCard(
                              context, 'Assets/img/t.png', 'Tomato')),
                    ]),
                Container(
                  height: 8
                ),
              ],
            ),
          )),
        ));
  }

  Widget _buildCard(BuildContext ctx, String image, title) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          ctx,
          DetailsScreen.routeName,
          arguments: DetailArguments(
            title,
            image,
          ),
        );
      },
      child: Card(
        elevation: 15,
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            Hero(child: Image.asset(image), tag: title),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
