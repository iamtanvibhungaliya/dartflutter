import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner : false,
    home: Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('🛍 List of fruits'),
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text:  "🍎 Apple\n",
                style: TextStyle(
                  color :  Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍇 Grapes\n",
                style: TextStyle(
                    color :  Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍒 Cherry\n",
                style: TextStyle(
                    color :  Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍓 Strawberry\n",
                style: TextStyle(
                    color :  Colors.pink,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🥭 Mango \n",
                style: TextStyle(
                    color :  Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍍 Pineapple \n",
                style: TextStyle(
                    color :  Colors.greenAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍋 Lemon\n",
                style: TextStyle(
                    color :  Colors.yellow,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🍉 Watermelon\n",
                style: TextStyle(
                    color :  Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text:  "🥥 Coconut \n",
                style: TextStyle(
                    color :  Colors.brown,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  );
}