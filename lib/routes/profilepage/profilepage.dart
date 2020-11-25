//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:finmotech/exports.dart';
import 'customListTile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0XFF0000d8).withOpacity(0.6),
      appBar: AppBar(
        backgroundColor: Color(0XFF0000ec),
        leading: Container(),
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'georgia',
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color(0XFF0000ec),
        child: Icon(
          Icons.keyboard_backspace,
          size: 29.0,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      highlightColor: Colors.blue.withOpacity(0.1),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EditProfile()));
                      },
                      child: Container(
                        height: 95.0,
                        padding: EdgeInsets.all(9.0),
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  // border: Border.all(color: Colors.white),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/mine.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 15.0, bottom: 12.0),
                                    child: Text(
                                      'Meetjahwill@gmail.com',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 18.0,
                                        fontFamily: 'georgia',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Jahswill',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 15.0,
                                        fontFamily: 'georgia',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.black54,
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
//        color: Color(0XFF0990c4),
//        color: Colors.white,
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ProfileItem(
                            ontap: () {},
                            leading: Icon(Icons.group, color: Colors.grey[700]),
                            title: 'Team',
                            subtitle: 'My Team members'),
                        ProfileItem(
                            ontap: () {
                              print('notifications');
                            },
                            leading:
                                Icon(Icons.group_add, color: Colors.grey[700]),
                            title: 'Add',
                            subtitle: 'Add a new Team member'),
                        ProfileItem(
                          ontap: () {
//
                          },
                          leading:
                              Icon(Icons.settings, color: Colors.grey[700]),
                          title: 'Settings',
                          subtitle: 'My account solve urgent issues',
                        ),
                        ProfileItem(
                            ontap: () {},
                            leading: Icon(Icons.help_outline,
                                color: Colors.grey[700]),
                            title: 'Self Help',
                            subtitle:
                                'Everything you need to know about NGO market'
                                ' place'),
                        ProfileItem(
                          ontap: () {},
                          leading:
                              Icon(Icons.fingerprint, color: Colors.grey[700]),
                          title: 'KYC',
                          subtitle: 'Complete your KYC',
                        ),
                        ProfileItem(
                          ontap: () {},
                          leading:
                              Icon(Icons.info_outline, color: Colors.grey[700]),
                          title: 'About',
                          subtitle: 'Contact one of our agents',
                        ),
                        ProfileItem(
                            ontap: () {
                              print('object');
                            },
                            leading: Icon(Icons.wc, color: Colors.grey[700]),
                            title: 'Partner',
                            subtitle: 'partner with an enterprise'),
                        ProfileItem(
                          ontap: () {},
                          leading: Icon(Icons.power_settings_new,
                              color: Colors.grey[700]),
                          title: 'Logout',
                          subtitle: 'See later',
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
