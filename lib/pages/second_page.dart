import 'package:flutter/material.dart';
import 'package:sent_data/pages/home_page.dart';
class SecondPage extends StatefulWidget {
  static const String id="second_page";
  //const SecondPage({Key? key}) : super(key: key);
  final String input;
  SecondPage({required this.input});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 60,
            width: 150,
            color: Colors.black,
          child: FlatButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
      },
        child: Text(widget.input,style: TextStyle(color: Colors.white,fontSize: 25),),
        ),
        ),
      ),

    );
  }
}
