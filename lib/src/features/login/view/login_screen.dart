import 'package:flutter/material.dart';
import 'package:proyecto_secciones/src/features/introduction/view/introduction_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = 'login';
  static Widget route(BuildContext context) => const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 201, 224, 236),
                const Color.fromARGB(255, 238, 164, 230),
              ],
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  width: 270,
                  height: 280,
                  child: Image.asset(
                    'assets/images/mi_imagen.png.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "LENGUAJE DE SEÑAS MEXICANA",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 13, 13),
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  "(En Español)",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(179, 180, 28, 28),
                  ),
                ),
                const SizedBox(height: 40),
                // Botón de acceso interactivo
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 65, 125, 197), // Color del botón
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // Bordes redondeados
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, IntroductionScreen.routeName);
                  },
                  child: const Text(
                    'Comenzar',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 243, 247),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
