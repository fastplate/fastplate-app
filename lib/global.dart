library boiler_plate.global;
import 'package:http/http.dart' as http;
import 'dart:convert';


List<Store> list = new List();
int listNum = 0;

class Store {
  String name;
  String time;
  String price;
  String distance;



  Store({this.name, this.time, this.price, this.distance});

  factory Store.fromJson(Map<String, dynamic> json) {
    int len = json['length'];
    print(len);
    listNum = len;
    for(int i = 0; i<len; i++){
      list.add(Store(
          name: json[i.toString()]['name'],
      time: json[i.toString()]['time'],
      price: json[i.toString()]['price'],
      distance: json[i.toString()]['distance']
      ));

      }
      return list[0];

  }





}
