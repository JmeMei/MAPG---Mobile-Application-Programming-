import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jamie_project_s10204749k/BiomedicalEngineeringScreen.dart';
import 'package:lottie/lottie.dart';

import 'CommonEngineeringScreen.dart';
import 'ComputerAndElectronicEngineeringScreen.dart';

class FavouritesScreen extends StatefulWidget {
  List<String> list;

  FavouritesScreen({Key? key, required this.list}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => FavouritesScreenState();
}

class FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //to remove the arrow
        title: const Text('Favourites <3 S10204749K'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 250,
              width: 300,
              child: LottieBuilder.network(
                  'https://assets1.lottiefiles.com/packages/lf20_scscv3eu.json'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget
                    .list.length, //to access the list, i must add a widget.
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () async {
                      //added an async as i am passing data from the next screen to the main screen. The data is "databack"
                      if (widget.list[index] ==
                          "Common Engineering Programme") {
                        final databack = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommonEngineeringScreen()),
                        );
                        var snackBar = SnackBar(
                          content: Text('$databack'),
                          duration: Duration(milliseconds: 800), //0.8s
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (widget.list[index] ==
                          "Electronic & Computer Engineering") {
                        final databack = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ComputerAndElectronicEngineeringScreen()),
                        );
                        var snackBar = SnackBar(
                          content: Text('$databack'),
                          duration: Duration(milliseconds: 800), //0.8s
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (widget.list[index] ==
                          "Biomedical Engineering") {
                        final databack = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BiomedicalEngineeringScreen()),
                        );
                        var snackBar = SnackBar(
                          content: Text('$databack'),
                          duration: Duration(milliseconds: 800), //0.8s
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    title: Text(
                      widget.list[index],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Builder(
              builder: (context) => TextButton.icon(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 32,
                  color: Colors.white,
                ),
                label: Text(
                  'Return to main page',
                  style: TextStyle(fontSize: 19),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white, //text colour
                  //side: BorderSide(color: Colors.white), //border color
                ),
                onPressed: () {
                  Navigator.pop(context,
                      "Returned back to School of engineering from Favourites");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
