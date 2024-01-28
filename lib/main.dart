import 'package:flutter/material.dart';
import 'package:csa_task1/line.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delhi Metro',
      home: const Home(),
      routes: {
        '/home': (context) => const Home(),
        '/line': (context) => Line(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> _selections = [true, false, false, false];

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
                    SizedBox(
                      width: 12.0,
                    ),
                    /*SvgPicture.asset(
                      'images/delhi_metro.svg',
                      semanticsLabel: 'Delhi Metro Icon',
                      height: size.height/15,
                      width: size.width/5,
                    ),*/
                    Image.asset(
                      'images/delhi_metro.png',
                      semanticLabel: 'Delhi Metro Icon',
                      height: size.height / 12,
                      width: size.width / 2,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color?>(
                            Colors.white),
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
              Container(
                width: 5 * size.width / 6,
                height: size.height / 8,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 0.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: const Center(child: Text('Idk whats going here')),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 5 * size.width / 6,
                height: 2.5 * size.height / 9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.airplane_ticket),
                                  onPressed: () {}),
                              const Text('Book Tickets'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5 * size.width / 18,
                          child: Divider(
                            height: 0.0,
                            indent: 0.0,
                            endIndent: 0.0,
                          ),
                        ),
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.credit_card),
                                  onPressed: () {}),
                              const Text('Smart Card \n  Recharge'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.5 * size.height / 9,
                      child: const VerticalDivider(
                        width: 0.0,
                        color: Colors.grey,
                        indent: 0.0,
                        endIndent: 0.0,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.next_plan),
                                  onPressed: () {}),
                              const Text('Plan Journey'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5 * size.width / 18,
                          child: Divider(
                            height: 0.0,
                            indent: 0.0,
                            endIndent: 0.0,
                          ),
                        ),
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.currency_rupee),
                                  onPressed: () {}),
                              const Text('Calculate Fare'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.5 * size.height / 9,
                      child: const VerticalDivider(
                        width: 0.0,
                        color: Colors.grey,
                        indent: 0.0,
                        endIndent: 0.0,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.location_on),
                                  onPressed: () {}),
                              const Text('Search Station'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5 * size.width / 18,
                          child: Divider(
                            height: 0.0,
                            indent: 0.0,
                            endIndent: 0.0,
                          ),
                        ),
                        Container(
                          height: 2.5 * size.height / 18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.receipt_long),
                                  onPressed: () {}),
                              const Text('      View \nTransaction'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 5 * size.width / 6,
                height: 3 * size.height / 9,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 0.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Depart From',
                        hintText: 'Select Source',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey[600] ?? Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Destination',
                        fillColor: Colors.grey[600],
                        hintText: 'Select Destination',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey[600] ?? Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll<OutlinedBorder?>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: const Text('Book Ticket'),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll<OutlinedBorder?>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(
                            Size(5 * size.width / 6 - 30, 40)),
                      ),
                      onPressed: () {},
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 9.0),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ToggleButtons(
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
                          } else if(index == 1 && _selections[index]) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Feature coming soon"),
                              ),
                            );
                            _selections[index] = false;
                          }
                          else if(index == 3 && _selections[index]) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Feature coming soon"),
                              ),
                            );
                          }
                          else if (index == 3 && _selections[index]) {
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
