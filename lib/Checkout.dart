
import 'package:flutter/material.dart';
import 'global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'global.dart';

class Checkout extends StatefulWidget {
  final List<dynamic> prices;
  final List<dynamic> items;
  final List<int> nums;
  final String title;
  final int total;

  Checkout({Key key, this.title, @required this.items, @required this.prices, @required this.nums, @required this.total}) : super(key: key);


  @override
  CheckoutState createState() => CheckoutState();
}

class CheckoutState extends State<Checkout> {

  List<int> j = new List();


  @override
  Widget build(BuildContext context) {
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

              new ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return Card(
                      child:
                      new Container(
                        height: 50.0,
                      child: new Row(
                        children: <Widget>[
                          Text(widget.nums[index].toString()+" "+ widget.items[index]+": "+widget.prices[index].toString()+" dollars each"),

                        ],
                      )
                      )
                  );
                },
              ),
              new FlatButton(
                  onPressed: (){
                  },
                  color: Colors.blue,
                  child: Text(
                      widget.total.toString()))
            ],
          ),
        ),)
      ,
    );
  }


}
