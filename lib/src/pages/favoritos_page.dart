import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  const FavoritosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          radius: 60, // tamaño del círculo
          backgroundColor: Colors.white, // fondo del círculo
          child: ClipOval(
            child: Image.asset(
              'assets/favoritos.png', // imagen de favoritos
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
