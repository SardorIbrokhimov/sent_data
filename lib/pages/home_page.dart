import 'package:flutter/material.dart';
import 'package:sent_data/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

 const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Future sentData() async{
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return SecondPage(input: "**************");

    }
    )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
          height: 60,
          width: 150,
          color: Colors.red,
          child: FlatButton(
            onPressed: (){
           sentData();
            },
            child: const Text("Next Page",style: TextStyle(color: Colors.black,fontSize: 25), ),
          ),
        ),
      ),
    );
  }

}

