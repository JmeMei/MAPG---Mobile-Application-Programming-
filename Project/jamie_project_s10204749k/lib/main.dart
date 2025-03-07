import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jamie_project_s10204749k/BiomedicalEngineeringScreen.dart';

import 'CommonEngineeringScreen.dart';
import 'ComputerAndElectronicEngineeringScreen.dart';
import 'Favourites.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<bool> _listStatus = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List<String> _FavouritesList = [];

  final List<String> _engineeringcourseslist = [
    'Common Engineering Programme',
    'Aerospace Engineering',
    'Automation & Mechatronic Systems',
    'Biomedical Engineering',
    'Electrical Engineering',
    'Electronic & Computer Engineering',
    'Engineering Science',
    'Marine & Offshore Technology',
    'Mechanical Engineering',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //to remove the debug banner shown on the AppBar
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Jamie Gonzales Esguerra S10204749K',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          //I used container as i will have both a horizontal list view and vertical list view
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'School of Engineering',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                //size of the horizontal scrollable
                height: 200,
                width: 200,
                //decoration: BoxDecoration(border: Border.all(width: 3)),
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset('images/SEO-hero.png'),
                      ),
                      //---------------------------------------------------------
                      //VALDRIC
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                        height: 100,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          child: Image.asset(
                            'images/CEP - valdric.png',
                            height: 110,
                            width: 400,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        height: 200,
                        width: 300,
                        child: Column(
                          children: [
                            const Text(
                              'Valdric Lim',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Automation & Mechatronic Systems student, Year 3',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              ' I appreciated the fact that I could explore different fields of engineering in CEP. Through CEP, I had more time to discover my interests, strengths and preferences first before deciding on a specific discipline right away.',
                              style: const TextStyle(
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            //-------------------------------------------
                            //Senthil
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                        height: 300,
                        width: 200,
                        // child: ClipRRect(
                        //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Image.asset(
                          'images/Pavatharani.jpg',
                          //fit: BoxFit.fitWidth,
                          height: 100,
                          width: 90,
                        ),
                        //  ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        height: 200,
                        width: 400,
                        child: Column(
                          children: [
                            const Text(
                              'Pavatharani Senthil Kumar',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Aerospace Technology* graduate, Class of 2016',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'From young, Pavatharani has always wanted to be a pilot and was curious how aircraft worked. Undeterred by gender norms, she aspires to be one of the rare female leaders in the aerospace industry and intends to make the industry more eco-friendly. She is currently in the prestigious Renaissance Engineering Programme at Nanyang Technological University,',
                              style: const TextStyle(
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            //-------------------------------------------
                            //Senthil
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Builder(
                //You need a builder to go to the next screen
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black12,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () async {
                    final databack = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FavouritesScreen(list: _FavouritesList)),
                    );
                    var snackBar = SnackBar(
                      content: Text('$databack'),
                      duration: Duration(milliseconds: 800), //0.8s
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Favourites <3',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
              Builder(
                  builder: (context) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_listStatus.elementAt(0) == true) {
                              _FavouritesList.remove(
                                  'Common Engineering Programme');
                              _FavouritesList.add(
                                  'Common Engineering Programme');
                            } else {
                              _FavouritesList.remove(
                                  'Common Engineering Programme'); //if CEP course was not checked, remove the CEP course in the favourite list
                            }
                            if (_listStatus.elementAt(1) == true) {
                              _FavouritesList.remove('Aerospace Engineering');
                              _FavouritesList.add('Aerospace Engineering');
                            } else {
                              _FavouritesList.remove('Aerospace Engineering');
                            }
                            if (_listStatus.elementAt(2) == true) {
                              //'Automation & Mechatronic System'
                              _FavouritesList.remove(
                                  'Automation & Mechatronic System');
                              _FavouritesList.add(
                                  'Automation & Mechatronic System');
                            } else {
                              _FavouritesList.remove(
                                  'Automation & Mechatronic System');
                            }
                            if (_listStatus.elementAt(3) == true) {
                              //'Biomedical Engineering')
                              _FavouritesList.remove('Biomedical Engineering');
                              _FavouritesList.add('Biomedical Engineering');
                            } else {
                              _FavouritesList.remove('Biomedical Engineering');
                            }
                            if (_listStatus.elementAt(4) == true) {
                              //'Electrical Engineering'
                              _FavouritesList.remove('Electrical Engineering');
                              _FavouritesList.add('Electrical Engineering');
                            } else {
                              _FavouritesList.remove('Electrical Engineering');
                            }
                            if (_listStatus.elementAt(5) == true) {
                              //'Electronic & Computer Engineering'
                              _FavouritesList.remove(
                                  'Electronic & Computer Engineering');
                              _FavouritesList.add(
                                  'Electronic & Computer Engineering');
                            } else {
                              _FavouritesList.remove(
                                  'Electronic & Computer Engineering');
                            }
                            if (_listStatus.elementAt(6) == true) {
                              //'Engineering Science'
                              _FavouritesList.remove('Engineering Science');
                              _FavouritesList.add('Engineering Science');
                            } else {
                              _FavouritesList.remove('Engineering Science');
                            }
                            if (_listStatus.elementAt(7) == true) {
                              //'Marine & Offshore Technology'
                              _FavouritesList.remove(
                                  'Marine & Offshore Technology');
                              _FavouritesList.add(
                                  'Marine & Offshore Technology');
                            } else {
                              _FavouritesList.remove(
                                  'Marine & Offshore Technology');
                            }
                            if (_listStatus.elementAt(8) == true) {
                              //'Mechanical Engineering'
                              _FavouritesList.remove('Mechanical Engineering');
                              _FavouritesList.add('Mechanical Engineering');
                            } else {
                              _FavouritesList.remove('Mechanical Engineering');
                            }
                          });
                          var snackBar = SnackBar(
                            content: Text('Favourite updated'),
                            duration: Duration(milliseconds: 1000), //1s
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text('Update favourites',
                            style: TextStyle(fontSize: 20)),
                      )),
              Expanded(
                child: Container(
                    // so that it would not touch the picture
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: _engineeringcourseslist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0),
                            child: Card(
                              //elevation: 8, //to add a shadow below
                              margin: EdgeInsets.all(
                                  6), //space in between each card
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.grey.shade100,
                                      Colors.blueGrey.shade600,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: ListTile(
                                  onTap: () async {
                                    //added an async as i am passing data from the next screen to the main screen. The data is "databack"
                                    if (_engineeringcourseslist[index] ==
                                        "Common Engineering Programme") {
                                      final databack = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CommonEngineeringScreen()),
                                      );
                                      var snackBar = SnackBar(
                                        content: Text('$databack'),
                                        duration:
                                            Duration(milliseconds: 800), //0.8s
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    } else if (_engineeringcourseslist[index] ==
                                        "Electronic & Computer Engineering") {
                                      final databack = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ComputerAndElectronicEngineeringScreen()),
                                      );
                                      var snackBar = SnackBar(
                                        content: Text('$databack'),
                                        duration:
                                            Duration(milliseconds: 800), //0.8s
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    } else if (_engineeringcourseslist[index] ==
                                        "Biomedical Engineering") {
                                      final databack = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BiomedicalEngineeringScreen()),
                                      );
                                      var snackBar = SnackBar(
                                        content: Text('$databack'),
                                        duration:
                                            Duration(milliseconds: 800), //0.8s
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  },
                                  title: Text(
                                    _engineeringcourseslist[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  trailing: Checkbox(
                                    value: _listStatus[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _listStatus[index] =
                                            !_listStatus[index];
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
