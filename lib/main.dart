import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Easy DND"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(15.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <Widget>[
            Card(
              color: Color.fromARGB(255, 76, 175, 80),
              elevation: 5.0,
              child: InkWell(
                splashColor: Colors.blueGrey,
                onTap: () {
                  setState(() {
                    pressed = !pressed;
                  });
                  debugPrint("1st Example Tapped");
                },
                child: Center(
                  child: Text(
                    pressed ? ("Example 1") : ("Victory!"),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 3, 169, 244),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 255, 87, 34),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 255, 193, 7),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 4",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 63, 81, 181),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 156, 39, 176),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 6",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 233, 30, 99),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 7",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 121, 85, 72),
              elevation: 5.0,
              child: Center(
                child: Text(
                  "Example 8",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
