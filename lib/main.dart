import 'package:flutter/material.dart';
import 'package:fastplate/StoreList.dart';
import 'StoreDetails.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
        appBar: AppBar(
        title: const Text('Fastplate')),
          body: MyHomePage(title: 'Dining places'),
        )


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return StoreList();
  }

}



