import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Accounts",style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            SizedBox(height: 20,),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Account Blance",style: TextStyle(fontSize: 30),),
                  Text("₹55,000",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ],),
              ),
            ),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Transaction history",style: TextStyle(fontSize: 20),)),
            Divider(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16)
              ),
              child: ListTile(
                title: Text("Credit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("Sender name",style: TextStyle(fontSize: 18),),
                trailing: Text("₹150",style: TextStyle(fontSize: 20,color: Colors.green),),
              ),
            )
          ],),
        )
      ),
    );
  }
}

