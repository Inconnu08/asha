import 'dart:io';

import 'package:asha/screens/result.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:http/http.dart' as http;

class PickScreen extends StatefulWidget {
  static String routeName = '/image';

  @override
  _PickScreenState createState() => _PickScreenState();
}

class _PickScreenState extends State<PickScreen> {
  File _image;
  var lastEntry = -1;
  final FirebaseDatabase database = FirebaseDatabase.instance;
  final databaseReference = FirebaseDatabase.instance.reference();

  Future<int> getEntry(String key) async {
    int entry;
    await FirebaseDatabase.instance
        .reference()
        .child(key)
        .once()
        .then((DataSnapshot snapshot) {
      print(snapshot.value);
      entry = snapshot.value;
    });

    return entry;
  }

  Future<String> getPrediction() async {
    String result;
    await FirebaseDatabase.instance
        .reference()
        .child('prediction')
        .child('pred')
        .once()
        .then((DataSnapshot snapshot) {
      print(snapshot.value);
      result = snapshot.value;
    });

    return result;
  }

  void incrementLastEntry() async {
    var entry = await getEntry("last_entry");

    databaseReference.child("last_entry").set(++entry);
  }

  void setEntry(String key, value) async {
    print(value);
    databaseReference.child(key).set(value);
  }

  Future<http.Response> predict() {
    print('predicting...');
    return http.get('http://35.244.41.56:5000');
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    print(image);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 15,
          backgroundColor: Colors.greenAccent[100],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Container(
            height: 170,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new CircularProgressIndicator(),
                ),
                SizedBox(height: 20),
                new Text("Processing",
                    style: TextStyle(color: Colors.green[900])),
                SizedBox(height: 30)
              ],
            ),
          ),
        );
      },
    );

    // creating reference to firebase storage
    // FirebaseStorage storage = FirebaseStorage.getInstance();
    // final StorageReference storageRef = storage.getReferenceFromUrl("gs://diseasedetect-e39f6.appspot.com");

    final String imgName = formatDate(DateTime.now(),
            [yyyy, '.', mm, '.', dd, '.', HH, '.', nn, '.', ss]) +
        ".jpg";
    print(imgName);
    StorageReference ref = FirebaseStorage.instance.ref().child(imgName);

    final StorageUploadTask uploadTask = ref.putFile(image);

    final StorageTaskSnapshot downloadUrl = (await uploadTask.onComplete);
    final String url = (await downloadUrl.ref.getDownloadURL());
    print('URL Is $url');

    setEntry("last_url", url);
    setEntry("last_name", url);
    incrementLastEntry();

    predict();

    print(getPrediction());

    var p = await getPrediction();

    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog
      Navigator.pushNamed(
        context,
        ResultScreen.routeName,
        arguments: ResultArguments(p),
      );
    });

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    getEntry("last_entry");
    // addEntry();
    // getRecord("last_url");
    // getRecord("last_name");

    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an image'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
