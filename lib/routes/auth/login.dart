import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finmotech/exports.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0000d8).withOpacity(0.6),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            color: Colors.white,
//            height: MediaQuery.of(context).size.height,
//            width: MediaQuery.of(context).size.width,
            child: Column(
              //alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: TopContainerClip(),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
//                        begin: Alignment.center,
//                        end: Alignment.centerRight,
                            colors: [
                          Color(0XFF1414ff),
                          Color(0XFF1414ff),
                          Color(0XFF1414ff).withOpacity(0.9),
                          Colors.deepPurpleAccent
                        ])),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width - 20,
                  //color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextField(),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: Text(
                            'Forgot your Password ?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'quicksand'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipPath(
                      clipper: BottomContainerClip(),
                      child: Container(
                        height: 280,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color(0XFF1414ff),
                          Color(0XFF1414ff),
                          Color(0XFF1414ff).withOpacity(0.9),
//                              Colors.purple
                          Color(0XFF8a8aff),
                        ])),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: MediaQuery.of(context).size.width * 0.29,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext contex) => HomePage(),
                              ));
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: Offset(0, 2),
                                  blurRadius: 1.0,
                                  spreadRadius: 0.2,
                                )
                              ],
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color(0XFF1414ff),
                                Color(0XFF1414ff).withOpacity(0.9),
                                Colors.purple
                              ])),
                          child: Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  child: Text('Or'.toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'quicksand')),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  //color: Colors.orange,
                                  width: 250,
                                  child: Center(
                                    //still test
                                    child: Text(
                                      'Don\'t have an Account? SignUp.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'quicksand'),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      )),
    );
  }
}

class TopContainerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.15, 65, size.width * 0.3, 140);
    path.quadraticBezierTo(
        size.width * 0.44, size.height - 5, size.width * 0.63, 130);
    path.quadraticBezierTo(
        size.width - (size.width * 0.236), 90, size.width, 80);

    path.lineTo(size.width, size.height * 0.66);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

///the second clip comes here
class BottomContainerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    var sw = size.width;
    var sh = size.height;
    path.moveTo(0, 85.0);

    path.quadraticBezierTo(sw * 0.14, 18, sw * 0.25, 85);
    path.quadraticBezierTo(sw * 0.37, sh - 117, sw * 0.54, 75);
    path.quadraticBezierTo(sw * 0.68, 15, sw, 20);

    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
