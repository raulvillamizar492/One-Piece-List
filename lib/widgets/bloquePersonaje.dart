import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onepiecelist/core/styles.dart';
import 'package:onepiecelist/pages/detail_page.dart';

class bloquePersonaje
    extends StatefulWidget {
  const bloquePersonaje({super.key});

  @override
  State<bloquePersonaje>
  createState() =>
      _bloquePersonajeState();
}

class _bloquePersonajeState
    extends State<bloquePersonaje> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(
                      left: 15,
                    ),
                child: Text(
                  "Personajes",
                  style: EstiloText
                      .subtitle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(
                      right: 15,
                    ),
                child: TextButton(
                  onPressed: () {},
                  child: (const Text(
                    'Filtrar',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors
                          .blueAccent,
                    ),
                  )),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Personaje(
                  'Brook',
                  'o1.png',
                  0xFF607D8B,
                ),
                Personaje(
                  'Luffy',
                  'o2.png',
                  0xFFB10505,
                ),
                Personaje(
                  'Portgas D. Ace',
                  'o3.png',
                  0xFF0B953B,
                ),
                Personaje(
                  'Boa Hancock',
                  'o4.png',
                  0xFFC2DF07,
                ),
                Personaje(
                  'Roronoa zoa',
                  'o6.png',
                  0xFF448AFF,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Personaje(
    String nombre,
    String imagen,
    int color,
  ) => GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        CupertinoPageRoute(
          builder: (context) =>
              DetailPage(
                color: color,
                imagen: imagen,
                nombre: nombre,
              ),
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(5),
      margin:
          const EdgeInsetsGeometry.all(
            10,
          ),
      decoration: BoxDecoration(
        color: AppColors.headerApp,
        borderRadius:
            BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.start,
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(
                  left: 15,
                ),
            child: Container(
              padding:
                  const EdgeInsets.all(
                    4,
                  ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(
                      29,
                    ),

                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    offset:
                        const Offset(
                          0,
                          4,
                        ),
                    spreadRadius: 1,

                    color: Color(color),
                  ),
                ],
              ),
              child: Hero(
                tag: color,
                child: Image.asset(
                  'images/$imagen',
                  height: 80,
                  width: 60,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            nombre,
            style: EstiloText
                .nombrePersonaje,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
