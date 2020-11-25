import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
//  double xOffset = 0;
//  double yOffset = 0;
//  double scaleFactore = 1;
  double x2Offset = 0;
  double y2Offset = 0;
  double scaleFactore2 = 1;
  bool isScreenOpen = false;
  bool _pointerisIgnored = false;
  String email = '';
  int phone = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      email = 'meetjahwill@gmail.com';
      phone = 07050298246;
    });
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFF0000ec),
          leading: isScreenOpen == false
              ? InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Icon(Icons.keyboard_backspace))
              : InkWell(
                  onTap: () {
                    setState(() {
                      isScreenOpen == true ? setPage() : restorePage();
                    });
                  },
                  child: Icon(Icons.keyboard_backspace)),
          title: isScreenOpen == true
              ? AnimatedDefaultTextStyle(
                  child: Text('Profile Photo'),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'georgia',
                      fontSize: 19,
                      color: Colors.white),
                  duration: Duration(milliseconds: 1000))
              : AnimatedDefaultTextStyle(
                  child: Text('Profile info'),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'georgia',
                      fontSize: 19,
                      color: Colors.white),
                  duration: Duration(milliseconds: 1000))),
      body: SafeArea(
          child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              // color: Colors.lime,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text('Esquire',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'georgia',
                            fontSize: 25,
                            color: Colors.black87)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.blue, width: 1.5))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5.0),
                              child: Icon(Icons.mail_outline)),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5, bottom: 5.0),
                            child: Text(email,

                                ///todo:user email comes here
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'georgia',
                                    fontSize: 17,
                                    color: Colors.black87)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.blue, width: 1.5))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5.0),
                              child: Icon(Icons.phone

                                  ///todo:user phonenumber comes here
                                  )),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5, bottom: 5.0),
                            child: Text('$phone',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black87)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TextFormField(),
            Positioned(
              top: isScreenOpen == true ? 0 : 40,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      restorePage();
                    },
                    child: AnimatedContainer(
                      ///this container holds the profile image
                      duration: Duration(milliseconds: 250),
                      curve: Curves.decelerate,
                      transform:
                          Matrix4.translationValues(x2Offset, y2Offset, 0)
                            ..scale(scaleFactore2),
                      height: isScreenOpen == true
                          ? MediaQuery.of(context).size.height
                          : 150,
                      width: isScreenOpen == true
                          ? MediaQuery.of(context).size.width
                          : 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: isScreenOpen == true
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/mine.jpg'),
                              fit: isScreenOpen == true
                                  ? BoxFit.contain
                                  : BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 5,
                      child: isScreenOpen == true
                          ? Container()
                          : InkWell(
                              onTap: () {
                                print('upload image');
                                setState(() {
                                  SnackBar(
                                    duration: Duration(seconds: 5),
                                    content: Text('Coming soon'),
                                    backgroundColor: Colors.red,
                                  );
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0XFF0000ec).withOpacity(0.7),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  ///this icon direct to update the profile image
                                  Icons.mode_edit,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                ],
              ),
            ),

//            Positioned(
//              child: AnimatedContainer(
//                duration: Duration(milliseconds: 180),
//                curve: Curves.easeInOut,
//                transform: Matrix4.translationValues(x2Offset, y2Offset, 0)
//                  ..scale(scaleFactore2),
//                height: isScreenOpen == true
//                    ? MediaQuery.of(context).size.height
//                    : 200,
//                width: isScreenOpen == true
//                    ? MediaQuery.of(context).size.width
//                    : 200,
//                decoration: BoxDecoration(
//                    color: Colors.black54,
//                    shape: isScreenOpen == true
//                        ? BoxShape.rectangle
//                        : BoxShape.circle,
//                    image: DecorationImage(
//                        image: AssetImage('assets/images/mine.jpg'),
//                        fit: isScreenOpen == true
//                            ? BoxFit.contain
//                            : BoxFit.cover)),
//              ),
//            ),
          ],
        ),
      )),
    );
  }

  restorePage() {
    setState(() {
      x2Offset = 0;
      y2Offset = 0;
      scaleFactore2 = 1;

      isScreenOpen = true;
    });
  }

  setPage() {
    setState(() {
      x2Offset = 0;
      y2Offset = 0;
      scaleFactore2 = 1;

      isScreenOpen = false;
    });
  }
}
