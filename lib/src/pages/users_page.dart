import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: CircleAvatar(
          radius: 60, // tamaño del círculo
          backgroundColor: Colors.white, // borde o fondo del círculo
          child: ClipOval(
            child: Image.asset(
              'assets/usuario.png', // imagen de usuario
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
