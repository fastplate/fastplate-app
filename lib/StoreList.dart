
import 'package:flutter/material.dart';
import 'global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Store>> fetchPost() async {
  final response =
  await http.get('http://127.0.0.1:5000/getStores');


  if (response.statusCode == 200) {
    print("ds");

    // If the call to the server was successful, parse the JSON
    Store.fromJson(json.decode(response.body));

    return list;
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}


class StoreList extends StatefulWidget {
  StoreList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  StoreListState createState() => StoreListState();
}

class StoreListState extends State<StoreList> {
  final Future<List<Store>> post = fetchPost();
  int counter = 0;
  var name = "Resnik Cafe";
  var time = "8:00 A.M. - 2:00 P.M.";
  var price = "Expensive";
  var distance = "0.3 Miles";

  var name2 = "Tepper";
  var time2 = "11:00 A.M. - 3 P.M.";
  var price2 = "Cheap";
  var distance2 = "0.5 Miles";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Store>>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {

            return ListView.builder(
                itemCount: listNum,
                itemBuilder: (context, index) {
                  return new Container (
                      child: new Card (
                        color: Colors.greenAccent,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,


                            children: <Widget>[

                              new Text ((snapshot.data[index].name),
                                style: new TextStyle (fontWeight: FontWeight.bold),),
                              new Text (snapshot.data[index].time),
                              new Text (snapshot.data[index].price),
                              new Text ("300 feet"),
                              /*FlatButton(
                                  color: Colors.blue,
                                  child: new Text ("Go"),
                                  onPressed: () {
                                    counter += 1;
                                    setState(() {}

                                    );
                                  })*/
                            ]

                        ),
                      ), alignment: Alignment.center);
                }
            );




            return Text(snapshot.data.toString());
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner
          return CircularProgressIndicator();
        },
      )
    );


        }

}
