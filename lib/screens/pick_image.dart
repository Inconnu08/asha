import 'dart:io';

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
