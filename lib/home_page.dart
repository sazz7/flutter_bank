import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Text("My",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                Text(" Cards",style: TextStyle(fontSize: 28),),
              ],),
              Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.add)),
            ],),
          ),
          //cards
          SizedBox(height: 25,),
          Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Blance",style: TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Text("65,000",style: TextStyle(color: Colors.white,fontSize: 24),),
                SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("*****65442",style: TextStyle(color: Colors.white),),
                Text("10/32",style: TextStyle(color: Colors.white),),
              ],)
            ],),)
        ],),
      ),
    );
  }
}
