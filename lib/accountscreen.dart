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
                image: AssetImage('assets/car3.jpeg'),
                fit: BoxFit.fill,
                ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Ready to save time & money on your commute?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10),
                ElevatedButton(
                  onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    child: Text("Continue with your Waze account",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),

                  TextButton(
                    onPressed: (){},
                    child: Text("More options",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),),
                    ),
                     
                  
            ],
          )
        ],
      ),
    );
  }
}