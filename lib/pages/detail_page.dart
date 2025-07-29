import 'package:flutter/material.dart';
import 'package:onepiecelist/animations/fade_animations.dart';
import 'package:onepiecelist/core/styles.dart';

import 'package:onepiecelist/widgets/blurContained.dart';

class DetailPage
    extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.imagen,
    required this.nombre,
  });

  final int color;
  final String imagen;
  final String nombre;

  @override
  State<DetailPage> createState() =>
      _DetailPageState();
}

class _DetailPageState
    extends State<DetailPage> {
  double alturaAnime = 0;

  @override
  Widget build(BuildContext context) {
    alturaAnime = MediaQuery.of(
      context,
    ).size.height;
    return Scaffold(
      backgroundColor:
          AppColors.backgroundApp,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(widget.color),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(
                        left: 12,
                      ),
                  child: SizedBox(
                    height:
                        alturaAnime *
                        .5,
                    child: Hero(
                      tag: widget.color,
                      child: Image.asset(
                        'images/${widget.imagen}',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: FadeAnimations(
                    child: blurContainer(
                      child: Container(
                        height: 40,
                        width: 180,
                        alignment:
                            Alignment
                                .center,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                15,
                              ),
                          color: Colors
                              .white
                              .withOpacity(
                                0.1,
                              ),
                        ),
                        child: Text(
                          widget.nombre,
                          style:
                              EstiloText
                                  .title,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), //sirve para sobreponer una cosa encima de otro
            const SizedBox(height: 30),
            FadeAnimations(
              intervalStart: 0.3,
              child: Padding(
                // Letras Nombre
                padding:
                    const EdgeInsetsGeometry.symmetric(
                      horizontal: 8.0,
                    ),
                child: Text(
                  '${widget.nombre} Personaje',
                  style:
                      EstiloText.title,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const FadeAnimations(
              intervalStart: 0.3,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                child: Text(
                  'One Piece',
                  style: EstiloText
                      .subtitle,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding:
                  EdgeInsetsGeometry.symmetric(
                    horizontal: 8.0,
                  ),
              child: Row(
                // Letras de creador y pais
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                    children: [
                      FadeAnimations(
                        intervalStart:
                            0.5,
                        child: Text(
                          'Eichiro Oda',
                          style: TextStyle(
                            fontWeight:
                                FontWeight
                                    .bold,
                            fontSize:
                                23,
                            color: Colors
                                .white,
                          ),
                        ),
                      ),
                      FadeAnimations(
                        intervalStart:
                            0.5,
                        child: Text(
                          'Creador',
                          style: EstiloText
                              .subtitle,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                    children: [
                      FadeAnimations(
                        intervalStart:
                            0.5,
                        child: Text(
                          'Japon',
                          style: TextStyle(
                            fontWeight:
                                FontWeight
                                    .bold,
                            fontSize:
                                23,
                            color: Colors
                                .white,
                          ),
                        ),
                      ),
                      FadeAnimations(
                        intervalStart:
                            0.5,
                        child: Text(
                          'Pais',
                          style: EstiloText
                              .subtitle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            FadeAnimations(
              intervalStart: 0.6,
              curve: Curves.easeInCirc,
              child: GestureDetector(
                onTap: () => {
                  Navigator.pop(
                    context,
                  ),
                },
                child: Container(
                  width:
                      double.infinity,
                  height: 50,
                  alignment:
                      Alignment.center,
                  margin:
                      const EdgeInsetsDirectional.symmetric(
                        horizontal: 8,
                      ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(
                          15,
                        ),
                    color: Color(
                      widget.color,
                    ),
                  ),
                  child: const Text(
                    'Volver',
                    style: TextStyle(
                      color: Colors
                          .white60,
                      fontSize: 16,
                      fontWeight:
                          FontWeight
                              .bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
