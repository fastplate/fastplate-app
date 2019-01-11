import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
  String name = "JAQUON HART";
  String phoneNum = "111-111-1111";
  String diningLocation = "Au Bon Pain";
  String diningDelivery = "Hamerschlag House" ;
  String price = "\$3.50";
  String distPickup = "0.3 MI";
  String distDelivery = "0.3 MI";
  String arriveBy = "2:24 P.M." ;

  Color getCol (int index) {
    // This implementation doesn't actually work, we need to program the backend logic for this function
    // based on geographic coordinates
    if (index == 1) {
      return Colors.greenAccent;
    } if (index == 2) {
      return Colors.greenAccent;
    }
    else {
      return Colors.white;
    }

  }

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
          title: Text("Order Confirmation"),
        ),
        body: new Container(
            padding: new EdgeInsets.all (20.0),
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Center (
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center (
                          child: new Text (
                              'Thank you for', style: new TextStyle (fontSize: 32.0, fontWeight: FontWeight.bold)
                          )

                      ),

                      Center (
                          child: new Text (
                              'confirming the order!', style: new TextStyle (fontSize: 32.0, fontWeight: FontWeight.bold)
                          )

                      ),

                      Center (
                        child: Container (
                            padding: new EdgeInsets.only(top: 50.0, bottom: 20.0),
                      child: Column (

                        children: [
                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                            child: Row (children: [
                          Text (
                            "Customer: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                          ),
                          Text (
                          name, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                        )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                                Text (
                                    "Contact Details: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                    phoneNum, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                                Text (
                                    "Pickup: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                    diningLocation, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                                Text (
                                    "Destination: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                    diningDelivery, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                                Text (
                                    "Price: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                    price, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                ),])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                                    child: Row (children: [
                                      Text (
                                          "Distance to Pickup Location: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                      ),
                                      Text (
                                          distPickup, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                      )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                               Text (
                               "Distance to Delivery Location: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                 distDelivery, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                )])),

                          Container (
                              padding: new EdgeInsets.only(bottom: 20.0),
                              child: Row (children: [
                                Text (
                                    "Arrival by: ", style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold)
                                ),
                                Text (
                                    arriveBy, style: new TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent)
                                )])),
                        ]))),


                      Center (
                        child: Container (
                            padding: new EdgeInsets.only(bottom: 30.0),
                        child: Row (children: [
                          Card (
                            color: getCol(1) ,
                            child: Text ("Order Received", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                        ),

                          Card (
                            color: getCol (2) ,
                              child: Text ("Picked Up", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                          ),

                          Card (
                              color: getCol (3),
                              child: Text ("Delivered", style: new TextStyle (fontSize: 20.0, fontWeight:FontWeight.bold))

                          ),



                        ]))
                      ),





                      Center (
                          child: FlatButton (

                        child: Card (
                            color: Colors.red,
                          child: new Text (
                            "Cancel Order", style: new TextStyle (fontSize: 30.0, fontWeight: FontWeight.bold)
                          )
                        ),

                          onPressed: () {

                          }
                      )),


]))));}}