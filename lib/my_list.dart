import 'package:flutter/material.dart';
import 'package:flutter_bank/transaction.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Transaction()));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 20,
                    spreadRadius: 10
                )
              ]
          ),
          height: 90,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/transaction.png",height: 50,),
                SizedBox(width: 25,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transaction",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                    Text("Transaction history",style: TextStyle(fontSize: 15),)
                  ],),
                Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_forward_ios)),
              ],),
          ),),
      ),
    );
  }
}
