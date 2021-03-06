import 'package:flutter/material.dart';
import 'package:tbm_calculator/calc_form.dart';
import "package:tbm_calculator/about.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monoclonal Antibody Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 2,
        child: MyHomePage(title: 'Monoclonal Antibody Calculator'),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.indigoAccent,
        bottom: TabBar(
         indicatorWeight: 10,
          tabs: [
            Tab(icon: Icon(Icons.calculate)),
            Tab(icon: Icon(Icons.live_help_rounded)),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
      body: TabBarView(
          children: [
            CalcForm(),
            About(),
          ],
      ),
    );
  }
}
