import 'dart:io';

import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int selectedRadio;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  File _image;
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(60.0, 44.0, 80.0, 30.0),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  _showPicker(context);
                },
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: _image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            _image,
                            width: 200,
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60.0, 4.0, 60.0, 4.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Age'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(38.0, 0.0, 0, 0.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text('Male'),
                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text('Female'),
                        Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text('Others'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(48.0, 14.0, 48.0, 14.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VotingHomePageApp()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                color: Colors.blue[600],
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already an user ?',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          ' Sign In',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blue[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
