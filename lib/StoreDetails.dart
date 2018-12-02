
import 'package:flutter/material.dart';
import 'global.dart';
import 'Checkout.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'global.dart';

class StoreDetails extends StatefulWidget {
  final Store ste;
  final String title;
  final int length;

  StoreDetails({Key key, this.title, @required this.ste,  @required this.length}) : super(key: key);


  @override
  StoreDetailsState createState() => StoreDetailsState();
}

class StoreDetailsState extends State<StoreDetails> {

  List<int> j = new List();
  int total = 0;


  @override
  Widget build(BuildContext context) {
    while(j.length < widget.ste.menu.length){
      j.add(0);
    }
    print(widget.ste);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
            title: const Text('Basic AppBar')),
        body: new SafeArea(

      child: Column(

      mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          new Card(
              child: Container(
                  child: new Column(
                    children: <Widget>[
                      new Text ((widget.ste.name),
                        style: new TextStyle (fontWeight: FontWeight.bold),),
                      new Text (widget.ste.type),
                      new Text (widget.ste.price),
                      new Text (widget.ste.location),
                    ],
                  ),
                  width: 100.0,
                  color: Colors.blue
              )
          ),
          new ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.ste.menu.length,
            itemBuilder: (context, index) {
              return Card(
                child: new Row(
                  children: <Widget>[
                    Text(widget.ste.menu[index]+": "+widget.ste.prices[index].toString()+" dollars"),


                    IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        setState(() {
                          if(j[index]==null || j[index] == 0){
                            j[index] = 0;

                          }
                          else {
                            j[index] = j[index]-1;
                            total = total - widget.ste.prices[index];
                          }
                        });
                        setState(() {

                        });
                      },
                    ),
                    Text(j[index].toString()),

                    IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(Icons.add_circle),
                      onPressed: () {
                        setState(() {
                          print(j.length);
                          if(j[index]==null){
                            j[index] = 1;
                            total = total + widget.ste.prices[index];
                          }
                          else {
                            j[index] = j[index]+1;
                            total = total + widget.ste.prices[index];
                          }
                        });
                      },
                    ),

                  ],
                )
              );
            },
          ),
          new FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout(items: widget.ste.menu, nums: j, prices: widget.ste.prices, total:total)),
                );                },
              color: Colors.blue,
              child: Text(
                total.toString()
              ))
        ],
      ),
    ),)
    ,
    );
  }


}
