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
                            url: "https://i.postimg.cc/6QGH5H4K/ABC.gifs",
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
                                  "https://i.postimg.cc/s2wj30ZB/1-pro.png"),
                              Image.asset(
                                  "https://i.postimg.cc/R0MC5zq5/2-pro.png")
                            ],
                            url: "https://i.postimg.cc/wMw9wxV9/Prono.gif",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Saludos",
                              icon: Image.asset(
                                "https://i.postimg.cc/c4kkx6Bq/salu.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/nrWczSNq/1-s.png"),
                                Image.asset(
                                    "https://i.postimg.cc/L6r8F7tp/2-s.png"),
                                Image.asset(
                                    "https://i.postimg.cc/YSyp8sqZ/3-s.png"),
                                Image.asset(
                                    "https://i.postimg.cc/JhhrNLmj/4-s.png")
                              ],
                              url: "https://i.postimg.cc/MGk7tzXk/SALU.gif"),
                          SectionCard("Verbos",
                              icon: Image.asset(
                                "https://i.postimg.cc/Pr5Fn1Zz/verbs.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/gjdM8Vwr/1-verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/bv7VNcpx/2_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/zBTtytG9/3_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/90pLpDTb/4_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/c1MkZbj3/5_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/sDTnGZ3D/6_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/8PpKCbQ0/7_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/FH1TysKb/8_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/K8VJJSK6/9_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/yNZnGQck/10_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/TwvQvVJQ/11_verb.png"),
                                Image.asset(
                                    "https://i.postimg.cc/tTdkqsrb/12_verb.png")
                              ],
                              url:
                                  "https://i.postimg.cc/wBw5dVv1/Verbos-LSM.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Colores",
                              icon: Image.asset(
                                "https://i.postimg.cc/x1R7zYHY/colo.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/0N4VYNNg/1-colr.png"),
                                Image.asset(
                                    "https://i.postimg.cc/W3JXXPDd/2-colr.png")
                              ],
                              url: "https://i.postimg.cc/y6wnVb3T/Colores.gif"),
                          SectionCard("Numeros",
                              icon: Image.asset(
                                "https://i.postimg.cc/Jzmv0tsP/num.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/KjSQWsLJ/1-num.png"),
                                Image.asset(
                                    "https://i.postimg.cc/gjV4bqHd/2-num.png"),
                                Image.asset(
                                    "https://i.postimg.cc/XNds54Sh/3-num.png"),
                              ],
                              url:
                                  "https://i.postimg.cc/90krp9sD/N-meros-LSM.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Tiempos",
                              icon: Image.asset(
                                "https://i.postimg.cc/1RHYdvg3/tiemp.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/fyXSD4RS/1-tiem.png"),
                                Image.asset(
                                    "https://i.postimg.cc/sXMZHGFc/2-tiem.png"),
                                Image.asset(
                                    "https://i.postimg.cc/TwB5z2fX/3-tiem.png")
                              ],
                              url: "https://i.postimg.cc/xCm1bvDW/Tiempo.gif"),
                          SectionCard("Familia",
                              icon: Image.asset(
                                "https://i.postimg.cc/nVY6JHWZ/FAMILIA.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/FzykHT6W/1-fam.png"),
                                Image.asset(
                                    "https://i.postimg.cc/fWm9Cbbc/2-fam.png"),
                                Image.asset(
                                    "https://i.postimg.cc/xTQb4SkW/3-fam.png"),
                                Image.asset(
                                    "https://i.postimg.cc/VLFbyHn5/4-fam.png"),
                              ],
                              url:
                                  "https://i.postimg.cc/mrspr8BV/Familia-LSM.gif"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SectionCard("Emociones",
                              icon: Image.asset(
                                "https://i.postimg.cc/L69G4cdP/emoci.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/W3N2WQQw/1-emo.png"),
                                Image.asset(
                                    "https://i.postimg.cc/Ssgmwg4F/2-emo.png"),
                                Image.asset(
                                    "https://i.postimg.cc/HnjTHbWJ/3-emo.png")
                              ],
                              url:
                                  "https://i.postimg.cc/9QMZY91V/Emociones-LSM.gif"),
                          SectionCard("Preguntas",
                              icon: Image.asset(
                                "https://i.postimg.cc/vZpPnjK3/pre.png",
                                height: 80,
                                width: 80,
                              ),
                              images: [
                                Image.asset(
                                    "https://i.postimg.cc/fbw8SQqY/1-pre.png"),
                                Image.asset(
                                    "https://i.postimg.cc/XYK2vYLV/2-pre.png"),
                                Image.asset(
                                    "https://i.postimg.cc/wB00h4nZ/3-pre.png")
                              ],
                              url: "https://i.postimg.cc/gkvs6CjM/Pregu.gif"),
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
