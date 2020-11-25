import 'package:finmotech/routes/profilepage/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:finmotech/exports.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffetMainscreen = 0;
  double yOffsetMainscreen = 0;
  double scaleFactore = 1;
  bool isScreenOpen = false;
  bool _pointerisIgnored = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF0000d8).withOpacity(0.6),
        body: SafeArea(
            child: Container(
          color: Color(0XFF4f4fff),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
//        color: Color(0XFF0990c4),
//        color: Colors.white,
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            restorePage();
                          }),
                    ),
                    Container(
                      height: 60,
                      width: 125,
                      child: Center(
                          child: Text(
                        'Finmo Tech',
                        style: TextStyle(
                          color: Colors.amber[700],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProfilePage()));
                          restorePage();
                        },
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        onTap: () {
                          print('notifications');
                        },
                        leading: Icon(Icons.notifications, color: Colors.white),
                        title: Text(
                          'notifications',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ServicesPage()));
                          restorePage();
                        },
                        leading: Icon(Icons.accessibility, color: Colors.white),
                        title: Text(
                          'Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        leading: Icon(Icons.account_balance_wallet,
                            color: Colors.white),
                        title: Text(
                          'Purse',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        leading: Icon(Icons.history, color: Colors.white),
                        title: Text(
                          'History',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ),

              ///this section  is for the mainscreen container
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                transform: Matrix4.translationValues(
                    xOffetMainscreen, yOffsetMainscreen, 0)
                  ..scale(scaleFactore),

                ///this is the home page Screen
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
//              color: Color(0XFF002642),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0XFF0000ec),
                        child: Row(
                          children: <Widget>[
                            isScreenOpen == false
                                ? IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        xOffetMainscreen =
                                            MediaQuery.of(context).size.width *
                                                0.5;
                                        yOffsetMainscreen =
                                            MediaQuery.of(context).size.height *
                                                0.2;
                                        //  scaleFactore = 0.9;
                                        isScreenOpen = true;
                                        _pointerisIgnored = true;
                                      });
                                    })
                                : IconButton(
                                    icon: Icon(
                                      Icons.navigate_before,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      restorePage();
                                    }),
                            Expanded(
                                child: Center(
                                    child: Text(
                              'Credit Cards',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21),
                            )))
                          ],
                        ),
                      ),
                      Container(
                        height: 210,
                        width: MediaQuery.of(context).size.width,
                        child: CarouselSlider1(),
                        decoration: BoxDecoration(
                            gradient: SweepGradient(
                          colors: [
                            Color(0XFF0000c4),
                            Colors.white.withOpacity(0.9),
                            Color(0XFF0000c4),
                            Colors.white.withOpacity(0.9),
                            Color(0XFF0000c4)
                          ],
                        )),
                      ),
                      InkWell(
                        onTap: () {
                          restorePage();
                        },
                        child: IgnorePointer(
                          ignoring: _pointerisIgnored,
                          child: Container(
                            height: 70.0,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    color: Color(0XFF00008a),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Balance'.toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
//                                    fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              fontFamily: 'hindi'),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            '\$1345',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28,
                                                fontFamily: 'hindi'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    color: Color(0XFF0000d8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Bonus'.toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
//                                    fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              fontFamily: 'hindi'),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            '\$21',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28,
                                                fontFamily: 'hindi'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          restorePage();
                        },
                        child: IgnorePointer(
                          ignoring: _pointerisIgnored,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: _service(
                                        Icon(Icons.account_balance_wallet,
                                            color: Colors.black87),
                                        Text('E-Wallet')),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: _service(
                                        Icon(
                                          Icons.local_airport,
                                          color: Colors.black87,
                                        ),
                                        Text('Air Ticket')),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                          Icon(Icons.payment,
                                              color: Colors.black87),
                                          Text('Pay bills'))),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                          Icon(Icons.attach_money,
                                              color: Colors.black87),
                                          Text('Deposit'))),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                          Icon(Icons.shopping_basket,
                                              color: Colors.black87),
                                          Text('Martket'))),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        ServicesPage()));
                                      },
                                      child: _service(
                                          Icon(Icons.more_horiz,
                                              color: Colors.black87),
                                          Text('More'))),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }

  Widget _service(Icon icon, Text text) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          leading: icon,
          title: text,
        ),
      ),
    );
  }

  restorePage() {
    setState(() {
      xOffetMainscreen = 0;
      yOffsetMainscreen = 0;
      scaleFactore = 1;
      isScreenOpen = false;
      _pointerisIgnored = false;
    });
  }
}
