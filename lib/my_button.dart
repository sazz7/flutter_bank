import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final image;
  final String text;
  final button_tap;
  const MyButton({
    Key? key,
    required this.image,
    required this.text,
    required this.button_tap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: button_tap,
          child: Container(
            padding: EdgeInsets.all(20),
            height: 90,
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
            child: Center(
                child: Image.asset(image)),
          ),
        ),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
