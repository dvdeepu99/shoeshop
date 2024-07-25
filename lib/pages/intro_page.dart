import 'package:flutter/material.dart';
import 'package:shoe_shopping/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 200,
                  width: 220,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //sub title

              Text(
                'Brand new premium quality sneakers at your fingertips',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 30,
              ),
              //start now button

              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 206, 199, 199),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
