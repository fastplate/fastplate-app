library boiler_plate.global;
import 'package:http/http.dart' as http;
import 'dart:convert';


List<Store> list = new List();
int listNum = 0;

class Store {
  String name;
  String type;
  String price;
  String location;
  String id;
  List<dynamic> menu;
  List<dynamic> prices;



  Store({this.name, this.type, this.price, this.location, this.id, this.menu, this.prices});

  factory Store.fromJson(Map<String, dynamic> json) {
    int len = json['length'];
    print(len);
    listNum = len;
    for(int i = 0; i<len; i++){
      list.add(Store(
          name: json[i.toString()]['name'],
      type: json[i.toString()]['type'],
      price: json[i.toString()]['price'],
      location: json[i.toString()]['location'],
          id: json[i.toString()]['id'],
        menu: json[i.toString()]['menu'],
          prices: json[i.toString()]['prices']
      ));

      }
      return list[0];

  }





}
