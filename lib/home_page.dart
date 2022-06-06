import 'package:flutter/material.dart';
import 'package:flutter_bank/cards.dart';
import 'package:flutter_bank/my_button.dart';
import 'package:flutter_bank/my_list.dart';
import 'package:flutter_bank/send.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: SizedBox(height: 70,width: 70,
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.monetization_on),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          IconButton(
            iconSize: 35,
              onPressed: (){},
              icon: Icon(Icons.home)),
          IconButton(
              iconSize: 35,
              onPressed: (){},
              icon: Icon(Icons.settings))
        ],),
      ),
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
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(balance: 6500.00, cardNumber: 6512, expiryMonth: 10, expiryYear: 2032, color: Colors.deepPurple[300]),
                MyCard(balance: 5400.00, cardNumber: 7500, expiryMonth: 07, expiryYear: 2028, color: Colors.blue[300]),
                MyCard(balance: 9200.32, cardNumber: 5423, expiryMonth: 05, expiryYear: 2030, color: Colors.green[300]),
              ],
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
              controller: _controller,
              count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(image: "assets/send.png", text: "Send",button_tap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Send()));
                },),
                MyButton(image: "assets/request.png", text: "Request",button_tap: (){}),
                MyButton(image: "assets/bill.png", text: "Bill",button_tap: (){}),
            ],),
          ),
          SizedBox(height: 30,),
          MyList(),
        ],),
      ),
    );
  }
}
