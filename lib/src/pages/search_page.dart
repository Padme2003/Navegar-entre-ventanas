import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: CircleAvatar(
          radius: 60, // tamaño del círculo
          backgroundColor: Colors.white, // fondo del círculo
          child: ClipOval(
            child: Image.asset(
              'assets/buscador.png', // imagen del buscador
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
