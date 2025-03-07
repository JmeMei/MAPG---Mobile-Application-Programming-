import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CommonEngineeringScreen extends StatefulWidget {
  CommonEngineeringScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CommonEngineeringScreenState();
  }
}

class CommonEngineeringScreenState extends State<CommonEngineeringScreen> {
  String dropdownValue = 'Level 1.1';
  String DisplayText = '';

  final List<String> LevelInfo = [
    'Electrical Engineering Fundamentals (3 Credit Units)\n \nEngineering Mathematics 1 (4 Credit Units)\n \nIntegrated Real-world Project 1 (4 Credit Units)\n \nMechanical Engineering Fundamentals (3 Credit Units)\n \nProgramming (3 Credit Units)\n \nEnglish Language Express* (Credit Units - NA)\n \nInnovation Made Possible^ (3 Credit Units)',
    'Electrical & Electronic Technology (3 Credit Units)\n \nEngineering Mathematics 2 (4 Credit Units)\n \nIntegrated Real-world Project 2 (4 Credit Units)\n \nMaterials & Manufacturing Technology (3 Credit Units)\n \nThermofluids (3 Credit Units)\n \nCommunication Essentials^ (3 Credit Units)\n \nHealth & Wellness^ (1 Credit Unit)',
    'AC Circuits (3 Credit Units)\n\nAnalogue Electronics (3 Credit Units)\n \nDigital Fundamentals (3 Credit Units)\n \nEngineering Mathematics 2 (4 Credit Units)\n \nApplied Mathematics 2B+ (5 Credit Units)\n \nIntegrated Real-world Project 2 (4 Credit Units)\n \nCommunication Essentials^ (3 Credit Units)\n \nHealth & Wellness^ (1 Credit Unit)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Common Engineering Programme S10204749K',
            style: TextStyle(
                fontSize: 15)), //to remove the arrow button on the AppBar
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              //add container to contain the horizontal list view
              height: 200,
              width: 500,
              child: Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    child:
                        Image.asset('images/common-engineering-programme.jpg'),
                  ),
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: LottieBuilder.network(
                              'https://assets2.lottiefiles.com/private_files/lf30_dleb6zk6.json'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Text(
                            'Range of Net ELR2B2 for 2022 JAE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '6 to 26',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                          child: Text(
                            'Planned Intake (2022)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '420',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
            Expanded(
              child: Container(
                //so that it would not touch the picture
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    const Center(
                        child: Text(
                      'Course Overview',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    Container(
                      height: 200,
                      width: 200,
                      child: LottieBuilder.network(
                          'https://assets10.lottiefiles.com/packages/lf20_ic7oz9ip.json'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'Interested in the world of Engineering but unsure about what course to go for? With the Common Engineering Programme (CEP), you will have more time to explore the many fields of engineering instead of deciding on a specific discipline straight away.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'During the first semester, you’ll go on our unique Induction Programme to gain real-world experience through industry visits and dialogues, and receive career guidance to help you make a more informed decision in your course selection. You will also build a broad-based foundation in mechanical, electronic and electrical engineering, as well as mathematics and programming. Apply the knowledge that you’ve learnt by working on an integrated real-world project.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'You’ll get to choose either the Electrical & Electronic Track or Mechanical Track after your first semester, and choose a specific engineering diploma to major in by the end of your first year. Upon graduation, you will receive the same diploma as your peers who have enrolled for a particular course right from the start.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    const Center(
                        child: Text(
                      'What You\'ll Learn',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    const Center(
                        child: Text(
                      'Year 1',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.purpleAccent),
                        iconSize: 30,
                        //elevation: 16,
                        style: const TextStyle(color: Colors.purpleAccent),
                        underline: Container(
                          height: 3,
                          color: Colors.purpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                            if (dropdownValue == 'Level 1.1') {
                              DisplayText = LevelInfo[0];
                            } else if (dropdownValue ==
                                'Level 1.2 MECH (Mechanical) Track') {
                              DisplayText = LevelInfo[1];
                            } else if (dropdownValue ==
                                'Level 1.2 ELECT (Electrical & Electronic Track') {
                              DisplayText = LevelInfo[2];
                            } else {
                              DisplayText = '';
                            }
                          });
                        },
                        items: <String>[
                          'Level 1.1',
                          'Level 1.2 MECH (Mechanical) Track',
                          'Level 1.2 ELECT (Electrical & Electronic Track'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              //so that it would not overflow the text
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(DisplayText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                    Builder(
                      builder: (context) => TextButton.icon(
                        icon: Icon(Icons.arrow_back_ios_outlined, size: 32),
                        label: Text(
                          'Return to main page',
                          style: TextStyle(fontSize: 19),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white, //text colour
                          //side: BorderSide(color: Colors.white), //border color
                        ),
                        onPressed: () {
                          Navigator.pop(context, "Returned back from CEP");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
