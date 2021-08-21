import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textController = TextEditingController();
  var text = "";
  void displayText() {
    setState(() {
      text = textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(text),
          TextField(
            controller: textController,
          ),
          TextButton(
            onPressed: displayText,
            child: Text("Display Text"),
          )
        ],
      )),
    );
  }
}
