import 'package:flutter/material.dart';
import 'package:validate/validate.dart';


// image sources:
// https://newasianfoodny.com/vector-logo-master-card-logo.html
// http://www.creditcardimagelogos.com/discover-logos/
// https://paymentweek.com/2018-6-14-american-express-launches-new-no-annual-fee-cash-magnet-card-offering-unlimited-1-5-cash-back/
// https://www.pinterest.com/pin/255438610086690113/?lp=true
// https://www.sketchappsources.com/free-source/726-paypal-card-logo-sketch-freebie-resource.html


void main() => runApp(new MaterialApp(
  title: 'Forms in Flutter',
  home: new PaymentPage(),
));

class PaymentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _PaymentPageState();
}

class _PaymentData {
  String name = '';
  String cardNumber = '';
  String securityCode = '';
  String expirationDate = '';
  String blocks = "";
  String dinex = "";

}

class _PaymentPageState extends State<PaymentPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = new GlobalKey<FormState>() ;
  _PaymentData _data = new _PaymentData();

  String _validateSecurityCode(String value) {
    if (value.length < 3 || value.length > 3) {
      return 'CVV is invalid';
    }

    return null;
  }

  String validateCardNumber(String value) {
    if (value.length < 19 || 19 < value.length ) {
      return 'The card number is invalid.';
    }

    return null;
  }

  String validateExpirationDate (String value) {
    if (value.length < 5 || value.length > 5) {
      return "Expiration date is invalid";
    }

    return null;
  }




  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the login data.');
      print('Cardholder name: ${_data.name}');
      print('Credit Card Number: ${_data.cardNumber}');
    }
  }

  @override
  Widget build(BuildContext context) {
    var assetsImage1 = new AssetImage ('assets/VISA.png');
    var image1 = new Image (image: assetsImage1, width: 70, height: 70);

    var assetsImage2 = new AssetImage ('assets/MASTERCARD.png');
    var image2 = new Image (image: assetsImage2, width: 70, height: 70);

    var assetsImage3 = new AssetImage ('assets/AMERICANEXPRESS.png');
    var image3 = new Image (image: assetsImage3, width: 70, height: 70);

    var assetsImage4 = new AssetImage ('assets/DISCOVER.png') ;
    var image4 = new Image (image: assetsImage4, width: 70, height: 70) ;

    var assetsImage5 = new AssetImage ('assets/PAYPAL.png');
    var image5 = new Image (image: assetsImage5, width: 70, height: 70) ;

    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Payment'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: this._formKey,
            child: new ListView(
              children: <Widget>[


                new Container(
                    padding: new EdgeInsets.only(bottom: 15.0),
                    child: new Text ("Meal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.deepPurple))
                ),


                new TextFormField(


                    decoration: new InputDecoration(
                        hintText: 'x',
                        labelText: 'BLOCKS'

                    ),

                    onSaved: (String value) {
                      this._data.blocks = value;
                    }
                ),

                new TextFormField(

                    decoration: new InputDecoration(
                        hintText: 'xx.xx',
                        labelText: 'DINEX DOLLARS'

                    ),

                    onSaved: (String value) {
                      this._data.dinex = value;
                    }
                ),






              new Container (
                  padding: new EdgeInsets.only (top: 50.0, bottom: 15.0),
                  child: new Text ("Delivery", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
                  color: Colors.deepPurple)

          )
                ),


                new ButtonTheme (
                    padding: const EdgeInsets.all (0),
                    child: new ButtonBar (
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          new InkWell (

                              onTap: () => print ("This is VISA"),
                              child: image1),
                          new InkWell (
                              onTap: () => print ("This is Mastercard"),
                              child: image2),

                          new InkWell (
                              onTap: () => print ("This is American Express"),
                              child: image3),
                          new InkWell (
                              onTap: () => print ("This is Discover"),
                              child: image4),
                          new InkWell (
                              onTap: () => print ("This is Paypal"),
                              child: image5),])),

                new TextFormField(

                    decoration: new InputDecoration(
                        hintText: 'xxxx-xxxx-xxxx-xxxx',
                        labelText: 'CARD NUMBER'
                    ),
                    validator: this.validateCardNumber,
                    onSaved: (String value) {
                      this._data.cardNumber = value;
                    }
                ),

                new TextFormField(

                    decoration: new InputDecoration(
                        hintText: 'John Johnson',
                        labelText: 'CARDHOLDER NAME'
                    ),

                    onSaved: (String value) {
                      this._data.name = value;
                    }
                ),

                new TextFormField(

                    decoration: new InputDecoration(
                        hintText: 'xxx',
                        labelText: 'CVV'
                    ),
                    validator: this._validateSecurityCode,
                    onSaved: (String value) {
                      this._data.securityCode = value;
                    }
                ),

                new TextFormField(

                    decoration: new InputDecoration(
                        hintText: 'xx/xx',
                        labelText: 'Expiration Date'
                    ),
                    validator: this.validateExpirationDate,
                    onSaved: (String value) {
                      this._data.expirationDate = value;
                    }
                ),






                  new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(
                      top: 20.0),
                    child: new RaisedButton(
                      onPressed: this.submit,
                      color: Colors.blue,
                      child: new Text (
                      'FINISH AND PAY',
                      style: new TextStyle(
                          color: Colors.white
                      ),
                    ),

                  ),)


              ],
            ),
          )
      ),
    );
  }
}