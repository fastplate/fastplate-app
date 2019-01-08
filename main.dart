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
      home: MyHomePage(title: 'Active Courier'),
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

  int _chosen = -1;
  List <String> names1 = ["JELANEE UWAEZUOKE", "HU MY", "JAQUON HART", "PETER TAYLOR", "MICHAEL ROBINSON", "STEPHANIE TURNER",
  "ENRIQUE VERA" ];
  List <String> locations1 = ["0.3 MI - Wean Hall - iNoodle", "0.4 MI - Gates Computing - Taste of India",
   "0.6 MI - Hamerschlag House - Au Bon Pain", "0.8 MI - Tepper Quad - Rothberg's Roasters ll", "1.2 MI - Mudge Dorm - Taste of India",
  "1.0 MI - Gates Hillman Complex, 5th Floor Commons - Innovation Kitchen", "2 MI - Shirley Apartments - The Exchange"];
  List <String> prices1 = ["\$3.20", "\$3.30", "\$3.50", "\$5.20", "\$5.60", "\$5.80", "\$6.10"];

  List <String> names = ["JELANEE UWAEZUOKE", "HU MY", "JAQUON HART", "PETER TAYLOR", "MICHAEL ROBINSON", "STEPHANIE TURNER",
  "ENRIQUE VERA" ];
  List <String> locations = ["0.3 MI - Wean Hall - iNoodle", "0.4 MI - Gates Computing - Taste of India",
  "0.6 MI - Hamerschlag House - Au Bon Pain", "0.8 MI - Tepper Quad - Rothberg's Roasters ll", "1.2 MI - Mudge Dorm - Taste of India",
  "1.0 MI - Gates Hillman Complex, 5th Floor Commons - Innovation Kitchen", "2 MI - Shirley Apartments - The Exchange"];
  List <String> prices = ["\$3.20", "\$3.30", "\$3.50", "\$5.20", "\$5.60", "\$5.80", "\$6.10"];



  void _setChosen(int index) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      _chosen = index;
      print (_chosen);

    });

  }

  Color getCol (int index) {
    if (index == _chosen) {
      return Colors.lightBlueAccent;
    } else {
      return Colors.white;
    }

  }

  List <DropdownMenuItem<String>> _dropDownMenuItems;
  String _statusSel;

  List <DropdownMenuItem <String>> _getDropDownMenuItems() {
    List <DropdownMenuItem <String>> items = new List () ;
    items.add (new DropdownMenuItem (
        value: '0.5',
        child: new Text ("0.5 MI", style: new TextStyle (fontSize: 20.0))
    ));

    items.add (new DropdownMenuItem (
        value: "0.75",
        child: new Text ("0.75 MI", style: new TextStyle (fontSize: 20.0))
    ));

    items.add (new DropdownMenuItem (
        value: "1",
        child: new Text ("1 MI", style: new TextStyle (fontSize: 20.0))
    ));

    items.add (new DropdownMenuItem (
        value: "5",
        child: new Text (">1 MI", style: new TextStyle (fontSize: 20.0))
    ));
    return items;
  }

  void changedDropDownItem (String selectedItem) {
    setState (() {
      _statusSel = selectedItem;


      names = ["JELANEE UWAEZUOKE", "HU MY", "JAQUON HART", "PETER TAYLOR", "MICHAEL ROBINSON", "STEPHANIE TURNER",
      "ENRIQUE VERA" ];
      locations = ["0.3 MI - Wean Hall - iNoodle", "0.4 MI - Gates Computing - Taste of India",
      "0.6 MI - Hamerschlag House - Au Bon Pain", "0.8 MI - Tepper Quad - Rothberg's Roasters ll", "1.2 MI - Mudge Dorm - Taste of India",
      "1.0 MI - Gates Hillman Complex, 5th Floor Commons - Innovation Kitchen", "2 MI - Shirley Apartments - The Exchange"];
      prices = ["\$3.20", "\$3.30", "\$3.50", "\$5.20", "\$5.60", "\$5.80", "\$6.10"];


      for ( var location in locations1) {
        if (double.parse(location.split(" ")[0]) > double.parse(_statusSel)) {
          if (locations.contains(location)) {
            int index = locations.lastIndexOf(location);
            locations.remove(location);
            names.removeAt(index);
            prices.removeAt(index);
          }
        }
      }

    });
  }


  @override

  void initState () {
    _dropDownMenuItems = _getDropDownMenuItems() ;
    _statusSel = _dropDownMenuItems[0].value;

    super.initState();

    names = ["JELANEE UWAEZUOKE", "HU MY", "JAQUON HART", "PETER TAYLOR", "MICHAEL ROBINSON", "STEPHANIE TURNER",
    "ENRIQUE VERA" ];
    locations = ["0.3 MI - Wean Hall - iNoodle", "0.4 MI - Gates Computing - Taste of India",
    "0.6 MI - Hamerschlag House - Au Bon Pain", "0.8 MI - Tepper Quad - Rothberg's Roasters ll", "1.2 MI - Mudge Dorm - Taste of India",
    "1.0 MI - Gates Hillman Complex, 5th Floor Commons - Innovation Kitchen", "2 MI - Shirley Apartments - The Exchange"];
    prices = ["\$3.20", "\$3.30", "\$3.50", "\$5.20", "\$5.60", "\$5.80", "\$6.10"];

    for ( var location in locations1) {
      if (double.parse(location.split(" ")[0]) > double.parse(_statusSel)) {
        if (locations.contains(location)) {
          int index = locations.lastIndexOf(location);
          locations.remove(location);
          names.removeAt(index);
          prices.removeAt(index);
        }
      }
    }
  }


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
          title: Text(widget.title),
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
                        child: new Container (
                          child: new Center (
                            child: new DropdownButton (
                              style: new TextStyle (color: Colors.blue, fontWeight: FontWeight.bold),
                              value : _statusSel,
                              items: _dropDownMenuItems,
                              onChanged: changedDropDownItem,
                            ),),),),
                      Center (
                          child: new Text (
                              '15 Recommended Orders', style: new TextStyle (fontSize: 32.0, fontWeight: FontWeight.bold)
                          )

                      ),


                      Expanded ( child:
                      ListView.builder
                        (
                          itemCount: names.length,
                          itemBuilder: (BuildContext ctxt, int Index) {
                            return new FlatButton(
                                child: Card (
                                  color: getCol (Index),
                                  child: Row(
                                    children: <Widget>[
                                      new Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: new Text(
                                          prices[Index],
                                          style: new TextStyle(
                                              fontSize: 28.0,
                                              color: Colors.green, fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(names[Index], style: TextStyle(
                                                      fontWeight: FontWeight.bold)),
                                                  subtitle: Text(locations[Index]),
                                                ),

                                              ]))
                                    ],
                                  ),),
                                onPressed: () {
                                  _setChosen(Index);
                                }
                            );
                          }))]))));}
}
