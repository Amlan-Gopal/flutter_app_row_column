import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Row Column Sample"
          ),
        ),
        body: Center(
          // Column
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //We can use center, end, spaceAround, spaceEvenly, spaceBetween etc
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "row and column concepts",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Raised button",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueGrey
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.amber,

                      child: Text(
                        "Raised",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red[500]
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Material button",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueGrey
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.amber,

                      child: Text(
                        "Material",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red[500]
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          color: Colors.cyan,
                          icon: Icon(
                            Icons.access_alarm
                          ),
                        ),
                        IconButton(
                          color: Colors.blueAccent,
                          icon: Icon(
                              Icons.account_box
                          ),
                        )
                      ],
                    )
                  ],
                )
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
