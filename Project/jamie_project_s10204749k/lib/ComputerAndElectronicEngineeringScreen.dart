import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ComputerAndElectronicEngineeringScreen extends StatefulWidget {
  const ComputerAndElectronicEngineeringScreen({Key? key}) : super(key: key);

  @override
  State<ComputerAndElectronicEngineeringScreen> createState() =>
      _ComputerAndElectronicEngineeringScreenState();
}

class _ComputerAndElectronicEngineeringScreenState
    extends State<ComputerAndElectronicEngineeringScreen> {
  String dropdownValueYearOne = 'Level 1.1';
  String dropdownValueYearTwo = 'Level 2.1';
  String dropdownValueYearThree = 'Level 3.1';

  String DisplayTextYearOne = '';
  String DisplayTextYearTwo = '';
  String DisplayTextYearThree = '';

  final List<String> LevelOne = [
    'Electrical Engineering Fundamentals (3 Credit Units)\n \nEngineering Mathematics 1 (4 Credit Units)\n \nIntegrated Real-world Project 1 (4 Credit Units)\n \nMechanical Engineering Fundamentals (3 Credit Units)\n \nProgramming (3 Credit Units)\n \nEnglish Language Express* (Credit Units - NA)\n \nInnovation Made Possible^ (3 Credit Units)',
    'Electrical & Electronic Technology (3 Credit Units)\n \nEngineering Mathematics 2 (4 Credit Units)\n \nIntegrated Real-world Project 2 (4 Credit Units)\n \nMaterials & Manufacturing Technology (3 Credit Units)\n \nThermofluids (3 Credit Units)\n \nCommunication Essentials^ (3 Credit Units)\n \nHealth & Wellness^ (1 Credit Unit)',
  ];

  final List<String> LevelTwo = [
    'Applied Digital Electronics (3 Credit Units)\n\nIntegrated Real-world Project 3 (4 Credit Units)\n\nNetwork Fundamentals (4 Credit Units)\n\nQuality Systems & Analytics (3 Credit Units)\n\nCOMPUTER NETWORKS SPECIALISATION OPTION: Servers & Cloud Fundamentals (4 Credit Units)\n\nROBOTICS & COMMUNICATION SPECIALISATION OPTION: Applied Analogue Electronics (4 Credit Units)',
    'Integrated Real-world Project 4 (4 Credit Units)\n\nMicrocontroller & Interfacing (5 Credit Units)\n\nObject-oriented Programming (5 Credit Units)\n\nWorld Issues: A Singapore Perspective^ (2 Credit Units)\n\nCOMPUTER NETWORKS SPECIALISATION OPTION: Routing & Switching (4 Credit Units)\n\nROBOTICS & COMMUNICATION SPECIALISATION OPTION: Communication Systems (4 Credit Units)',
  ];

  final List<String> LevelThree = [
    'Integrated Real-world Project 5 (4 Credit Units)\n\nInternet of Things (4 Credit Units)\n\nMobile Application Programming (4 Credit Units)\n\nProject ID: Connecting the Dots^ (4 Credit Units)\n\nCOMPUTER NETWORK SPECIALISATION OPTION: Scaling & Connecting Networks (4 Credit Units)\n\nROBOTICS & COMMUNICATION SPECIALISATION OPTION: Embedded Robotics (4 Credit Units)',
    '6-Month Internship (Local/Overseas) (20 Credit Units) \n\n or \n\n 6-Month Final Year Project (20 Credit Units)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Electronic and Computer Engineering S10204749K',
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
                    child: Image.asset(
                        'images/electronic-computer-engineering.jpg'),
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
                          '7 to 16',
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
                          '100',
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
                          'https://assets9.lottiefiles.com/packages/lf20_w51pcehl.json'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'Electronics and computers are a large part of our daily lives – from the smart phones and laptops that you use to the vehicles that you travel in. You can play a part in shaping the way people live, work and play with the Diploma in Electronic & Computer Engineering (ECE).',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'ECE gives you a strong foundation in electronic hardware design, software programming skills and computer networks. With our industry-relevant curriculum, you will be well-placed to meet the needs of the industry when you graduate.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'In your first year, you will learn the fundamental aspects of engineering with modules such as Computer Programming, Analogue Electronics and Digital Fundamentals. In your second year, you can choose to deepen your expertise in a particular field by pursuing one of our two specialisation options, Computer Networks or Robotics & Communication. Then, in your final year, put your knowledge to the test with a six-month internship with industry leaders such as Creative Technology, ST Engineering and Xilinx.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: const Text(
                          'What’s more, you may even get the chance to work on industry sponsored projects at our technology centres. Plus, you will go on local or overseas study trips that will widen your exposure to the exciting world of engineering.',
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
                    //----------------------------------------------------------------------
                    //YEAR ONE
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: const Center(
                          child: Text(
                        'Year 1',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: dropdownValueYearOne,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.purpleAccent),
                        iconSize: 40,
                        //elevation: 16,
                        style: const TextStyle(color: Colors.purpleAccent),
                        isExpanded: true,
                        //so that the icon is moved to the right and fills entire dropdownbutton
                        underline: Container(
                          //box
                          height: 3,
                          color: Colors.purpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueYearOne = newValue!;
                            if (dropdownValueYearOne == 'Level 1.1') {
                              DisplayTextYearOne = LevelOne[0];
                            } else if (dropdownValueYearOne == 'Level 1.2') {
                              DisplayTextYearOne = LevelOne[1];
                            } else {
                              DisplayTextYearOne = '';
                            }
                          });
                        },
                        items: <String>[
                          //what is seen on the drop down menu button
                          'Level 1.1',
                          'Level 1.2',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              //so that it would not overflow the text
                              child: Text(
                                //to show the text in the drop down menu
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
                      //display the modules
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(DisplayTextYearOne,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                    //-------------------------------------------------------------------------
                    //YEAR TWO
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: const Center(
                          child: Text(
                        'Year 2',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: dropdownValueYearTwo,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.purpleAccent),
                        iconSize: 40,
                        //elevation: 16,
                        style: const TextStyle(color: Colors.purpleAccent),
                        isExpanded:
                            true, //so that the icon is moved to the right and fills entire dropdownbutton
                        underline: Container(
                          //box
                          height: 3,
                          color: Colors.purpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueYearTwo = newValue!;
                            if (dropdownValueYearTwo == 'Level 2.1') {
                              DisplayTextYearTwo = LevelTwo[0];
                            } else if (dropdownValueYearTwo == 'Level 2.2') {
                              DisplayTextYearTwo = LevelTwo[1];
                            } else {
                              DisplayTextYearTwo = '';
                            }
                          });
                        },
                        items: <String>[
                          //what is seen on the drop down menu button
                          'Level 2.1',
                          'Level 2.2',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              //so that it would not overflow the text
                              child: Text(
                                //to show the text in the drop down menu
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
                      //display the modules
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(DisplayTextYearTwo,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                    //----------------------------------------------------------------------
                    //YEAR THREE
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: const Center(
                          child: Text(
                        'Year 3',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: dropdownValueYearThree,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.purpleAccent),
                        iconSize: 40,
                        //elevation: 16,
                        style: const TextStyle(color: Colors.purpleAccent),
                        isExpanded:
                            true, //so that the icon is moved to the right and fills entire dropdownbutton
                        underline: Container(
                          //box
                          height: 3,
                          color: Colors.purpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueYearThree = newValue!;
                            if (dropdownValueYearThree == 'Level 3.1') {
                              DisplayTextYearThree = LevelThree[0];
                            } else if (dropdownValueYearThree == 'Level 3.2') {
                              DisplayTextYearThree = LevelThree[1];
                            } else {
                              DisplayTextYearThree = '';
                            }
                          });
                        },
                        items: <String>[
                          //what is seen on the drop down menu button
                          'Level 3.1',
                          'Level 3.2',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              //so that it would not overflow the text
                              child: Text(
                                //to show the text in the drop down menu
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
                      //display the modules
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text(DisplayTextYearThree,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                    //----------------------------------------------------
                    //RETURN BACK TO MAIN PAGE
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
                          Navigator.pop(context, "Returned back from ECE");
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
