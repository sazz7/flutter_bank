import 'package:flutter/material.dart';

class Send extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send money",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        /*actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))
        ],*/
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            SizedBox(height: 40,),
            Container(
              color: Colors.grey[200],
              child: Column(children: [
                SizedBox(height: 30,),
                CircleAvatar(
                  child: Icon(Icons.person,size: 40,),
                  radius: 40,
                ),
                SizedBox(height: 30,),
                Text("Sender name",style: TextStyle(fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.attach_money),
                      hintText: "000",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,width: 0
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      )
                    ),
                  ),
                ),
                MaterialButton(
                  child: Text("Send"),
                  onPressed: (){},
                  color: Colors.redAccent,
                    )
              ],),
            )
          ],),
        )
      ),
    );
  }
}
