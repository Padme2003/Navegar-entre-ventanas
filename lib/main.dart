import 'package:flutter/material.dart';
import 'src/pages/login_page.dart';
import 'src/pages/main_menu.dart';
import 'src/pages/home_screen.dart';
import 'src/pages/splash_screen.dart';
import 'src/pages/inicio_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login", // 👈 ahora la primera pantalla será el login
      routes: {
        "login": (context) => const LoginPage(),
        "menu": (context) => const MainMenu(),
        "splash": (context) => const SplashScreen(),
        "home": (context) => const HomeScreen(),
        "inicio": (context) => const InicioPage(),
      },
    );
  }
}
