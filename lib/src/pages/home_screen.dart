import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: CircleAvatar(
          radius: 60, // tamaño del círculo
          backgroundColor: Colors.white, // color del borde del círculo
          child: ClipOval(
            child: Image.asset(
              'assets/home.png', // tu imagen
              width: 100, // tamaño de la imagen dentro del círculo
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
