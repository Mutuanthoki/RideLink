import 'package:flutter/material.dart';

class Accountscreen extends StatefulWidget {
  const Accountscreen({super.key});

  @override
  State<Accountscreen> createState() => _AccountscreenState();
}

class _AccountscreenState extends State<Accountscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/car1.webp'),
                fit: BoxFit.fill,
                ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Ready to save time & money on your commute?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Text(
                    'More options'),
                  ),
                  SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('asset/car.jpg'),
                      Image.asset('asset/car1.webp'),
                    ],
                  )
            ],
          )
        ],
      ),
    );
  }
}