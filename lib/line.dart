import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  List<bool> _selections = [false, false, false, true];
  List<Color?> colors = [Colors.red,Colors.yellow[300],Colors.blue[800],Colors.green,Colors.purple,Colors.orange,Colors.purpleAccent,Colors.pink,Colors.grey,Colors.cyan,Colors.lightGreen];
  List<String> colors_string = ['Red','Yellow','Blue','Green','Purple','Orange','Voilet','Pink','Grey','Aqua','Light Green'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.7, 0.9],
            colors: [
              Colors.blue[900] ?? Colors.blue,
              Colors.grey[100] ?? Colors.white,
              Colors.grey[100] ?? Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5.0, 10.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'images/delhi_metro.png',
                      semanticLabel: 'Delhi Metro Icon',
                      height: size.height / 12,
                      width: size.width / 2,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll<Color?>(Colors.white),
                        shape: MaterialStatePropertyAll<OutlinedBorder?>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      child: const Text(
                        'Login',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                            height: size.height / 10,
                            width: 5 * size.width / 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(0.0, 0.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    /*VerticalDivider(
                                      thickness: 15.0,
                                      color: Colors.red,
                                    ),*/
                                    Container(
                                      height: size.height / 10,
                                      width: 10.0,
                                      decoration: BoxDecoration(
                                        color: colors[index],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      Icons.train_outlined,
                                      color: colors[index],
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Line ${index + 1}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${colors_string[index]} Line",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: size.height / 20,
                                  width: size.width / 3,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green,width: 1.0),
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.greenAccent,
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Normal Service',
                                    style: TextStyle(color: Colors.grey,fontSize: 15.0),
                                  )),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                width: size.width,
                height: 1 * size.height / 12,
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 8,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ToggleButtons(
                  isSelected: _selections,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _selections.length; i++) {
                        if (_selections[i] == true) {
                          _selections[i] = false;
                        }
                      }
                      _selections[index] = !_selections[index];
                      if (index == 0 && _selections[index]) {
                        Navigator.pushNamed(context, '/home');
                      } else if (index == 3 && _selections[index]) {
                        Navigator.pushNamed(context, '/line');
                      }
                    });
                  },
                  color: Colors.grey,
                  selectedColor: Colors.blue[900],
                  renderBorder: false,
                  constraints: BoxConstraints(
                      minWidth: (size.width - 30) / 4,
                      minHeight: size.height / 10),
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.location_on),
                    Icon(Icons.airplane_ticket),
                    Icon(Icons.notifications),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
