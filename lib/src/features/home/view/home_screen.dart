import 'package:flutter/material.dart';
import 'package:proyecto_secciones/src/features/section/view/section_screen.dart';

import '../widgets/section_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = 'home';

  get url => null;
  static Widget route(BuildContext context) => const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Cabezera con fondo gradiente
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 166, 168, 168),
                        const Color.fromARGB(255, 216, 209, 211)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0), // Espaciado más amplio
                    child: Center(
                      child: Text(
                        "Aprendizaje Divertido Para Niñas y Niños: Diversión y Educación.",
                        style: textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30, // Aumentar tamaño de texto
                          letterSpacing: 1.5, // Mejor legibilidad
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Descripción con fondo más suave y cambio de color de texto
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: const Center(
                    child: Text(
                      "Bienvenido a nuestra app, diseñada para enseñar el Lenguaje de Señas Mexicano (LSM). Aquí podrás aprender de forma interactiva los signos y la gramática básica del LSM, una herramienta clave para fomentar la inclusión y mejorar la comunicación en entornos escolares. Sigue los módulos, practica los ejercicios y diviértete mientras aprendes. ¡Comencemos!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13, // Aumento de tamaño de fuente
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),

              // Vista de Lista de las Secciones
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Sección de tarjetas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard(
                            "Abecedario",
                            icon: Image.asset(
                              "assets/abecedario/abc.png",
                              height: 80,
                              width: 80,
                            ),
                            images: [
                              Image.asset(
                                  "assets/abecedario/abc-1.png"),
                              Image.asset(
                                  "assets/abecedario/abc-2.png"),
                              Image.asset(
                                  "assets/abecedario/abc-3.png"),
                            ],
                            url: "assets/abecedario/ABC.gif",
                          ),
                          SectionCard(
                            "Pronombres",
                            icon: Image.asset(
                              "assets/pronombres/pro.png",
                              height: 80,
                              width: 80,
                            ),
                            images: [
                              Image.asset(
                                  "assets/pronombres/1-pro.png"),
                              Image.asset(
                                  "assets/pronombres/2-pro.png")
                            ],
                            url: "assets/pronombres/Prono.gif",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Saludos",
                              icon: Image.asset(
                                "assets/saludos/salu.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/saludos/1-s.png"),
                                Image.asset(
                                    "assets/saludos/2-s.png"),
                                Image.asset(
                                    "assets/saludos/3-s.png"),
                                Image.asset(
                                    "assets/saludos/4-s.png")
                              ],
                              url: "assets/saludos/SALU.gif"),
                          SectionCard("Verbos",
                              icon: Image.asset(
                                "assets/verbos/verbs.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/verbos/1-verb.png"),
                                Image.asset(
                                    "assets/verbos/2_verb.png"),
                                Image.asset(
                                    "assets/verbos/3_verb.png"),
                                Image.asset(
                                    "assets/verbos/4_verb.png"),
                                Image.asset(
                                    "assets/verbos/5_verb.png"),
                                Image.asset(
                                    "assets/verbos/6_verb.png"),
                                Image.asset(
                                    "assets/verbos/7_verb.png"),
                                Image.asset(
                                    "assets/verbos/8_verb.png"),
                                Image.asset(
                                    "assets/verbos/9_verb.png"),
                                Image.asset(
                                    "assets/verbos/10_verb.png"),
                                Image.asset(
                                    "assets/verbos/11_verb.png"),
                                Image.asset(
                                    "assets/verbos/12_verb.png")
                              ],
                              url:
                                  "assets/verbos/Verbos.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Colores",
                              icon: Image.asset(
                                "assets/colores/colo.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/colores/1-colr.png"),
                                Image.asset(
                                    "assets/colores/2-colr.png")
                              ],
                              url: "assets/colores/Colores.gif"),
                          SectionCard("Numeros",
                              icon: Image.asset(
                                "assets/numeros/num.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/numeros/1-num.png"),
                                Image.asset(
                                    "assets/numeros/2-num.png"),
                                Image.asset(
                                    "assets/numeros/3-num.png"),
                              ],
                              url:
                                  "assets/numeros/N-meros-LSM.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Tiempos",
                              icon: Image.asset(
                                "assets/tiempos/tiemp.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/tiempos/1-tiem.png"),
                                Image.asset(
                                    "assets/tiempos/2-tiem.png"),
                                Image.asset(
                                    "assets/tiempos/3-tiem.png")
                              ],
                              url: "assets/tiempos/Tiempo.gif"),
                          SectionCard("Familia",
                              icon: Image.asset(
                                "assets/familia/FAMILIA.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/familia/1-fam.png"),
                                Image.asset(
                                    "assets/familia/2-fam.png"),
                                Image.asset(
                                    "assets/familia/3-fam.png"),
                                Image.asset(
                                    "assets/familia/4-fam.png"),
                              ],
                              url:
                                  "assets/familia/Familia-LSM.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Emociones",
                              icon: Image.asset(
                                "assets/emociones/emoci.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/emociones/1-emo.png"),
                                Image.asset(
                                    "assets/emociones/2-emo.png"),
                                Image.asset(
                                    "assets/emociones/3-emo.png")
                              ],
                              url:
                                  "assets/emociones/Emociones LSM.gif"),
                          SectionCard("Preguntas",
                              icon: Image.asset(
                                "assets/preguntas/pre.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "assets/preguntas/1-pre.png"),
                                Image.asset(
                                    "assets/preguntas/2-pre.png"),
                                Image.asset(
                                    "assets/preguntas/3-pre.png")
                              ],
                              url: "assets/preguntas/Pregu.gif"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
