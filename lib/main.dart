// importing the material design for flutter
import 'package:flutter/material.dart';

// Creating the main run function
void main() {
  // calling the runApp method
  runApp(MaterialApp(
    // removing the debug banner from the screen
    debugShowCheckedModeBanner: false,
    // creating an instance of MyApp which is passed to home
    home: new MyApp(),
  ));
}

// creating the MyApp class which extends StatefulWidget, that is a Widget that can manage it's own state
class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

// creating a state class extending state with parameter MyApp
class _State extends State<MyApp> {
  
  String _value = 'Hello World!!';

  void changeName() {
    setState(() {
      _value = "My name is Victor";
    });
  }

  @override
  // widget build is like rendering, and this presents whatever widget to the screen
  Widget build(BuildContext context) {
    // returning a Scaffold to the screen
    // Scaffolds are of different layers
    return Scaffold(
      // first layer is the AppBar
      appBar: new AppBar(
        // using the property title to give the AppBar a title
        title: new Text("Your title"),
      ),
      // now to the second layer, which is the body, this where the main contenet is going to be.
      body: new Container(
        // add padding to all sides of the body content
        padding: new EdgeInsets.all(32.0),
        // center the content in the body
        child: new Center(
          // passing content to a column
          child: new Column(
            // column takes children which includes Text
            children: <Widget>[
              // passing a text to the body
              new Text(_value),
              new ElevatedButton(
                  onPressed: () {
                    changeName();
                  },
                  child: new Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
