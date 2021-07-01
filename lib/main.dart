import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Explore responsiveness'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var _isHovering = [false, false, false, false];

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Explore'),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              _isHovering[0] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Discover',
                                style: TextStyle(
                                  color: _isHovering[0]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              // For showing an underline on hover
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              _isHovering[0] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                  color: _isHovering[0]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              // For showing an underline on hover
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      body: Container(),
    );
  }
}