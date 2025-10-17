import 'package:flutter/material.dart';
import 'main_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  final String user = "Pame"; // usuario quemado
  final String pass = "12345"; // contraseña quemada

  String error = "";

  void _login() {
    if (_userController.text == user && _passController.text == pass) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainMenu()),
      );
    } else {
      setState(() {
        error = "Usuario o contraseña incorrectos";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // 👈 Fondo más suave
      body: Center(
        child: SingleChildScrollView(
          // Para que no se corte en pantallas pequeñas
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 👤 Imagen circular
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/usuario.png", // 👈 tu imagen
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // 📝 Campo usuario
                TextField(
                  controller: _userController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.blue),
                    labelText: "Usuario",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30), // 👈 Bordes redondeados
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // 🔑 Campo contraseña
                TextField(
                  controller: _passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                    labelText: "Contraseña",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // 🔵 Botón
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // 👈 Botón redondeado
                      ),
                      elevation: 5, // Sombra
                    ),
                    child: const Text(
                      "Iniciar Sesión",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Text(error, style: const TextStyle(color: Colors.red)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
