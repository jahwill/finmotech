import 'package:finmotech/exports.dart';
import 'package:finmotech/routes/services/servicelist_model.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF0000ec),
        title: Text(
          'Services page',
          style: TextStyle(fontFamily: 'georgia'),
        ),
      ),
      body: SafeArea(
          child: Container(
              child: ListView.builder(
                  itemCount: serviceslist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      serviceslist[index].routes));
                        },
                        leading: serviceslist[index].icon,
                        title: Text(serviceslist[index].title),
                        subtitle: Text(
                          serviceslist[index].subtitle,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    );
                  }))),
    );
  }

  List<servicesListModel> serviceslist = [
    servicesListModel(
        icon: Icon(Icons.account_balance),
        title: 'Deposit',
        subtitle: 'Deposite cash straight '
            'into you purse from your local bank.',
        routes: HomePage()),
    servicesListModel(
        icon: Icon(Icons.wb_incandescent),
        title: 'Power',
        subtitle: 'pay for electricity bill from the comfort of your home',
        routes: LogInScreen()),
    servicesListModel(
        icon: Icon(Icons.monetization_on),
        title: 'Loan',
        subtitle: 'Apply for loan today',
        routes: HomePage()),
    servicesListModel(
        icon: Icon(Icons.stay_current_portrait),
        title: 'Buy Airtime',
        subtitle: 'Buy airtime from your local purse',
        routes: LogInScreen()),
    servicesListModel(
        icon: Icon(Icons.local_gas_station),
        title: 'Gas',
        subtitle: 'Pay for your Fuel and Energy feel',
        routes: HomePage())
  ];
}
