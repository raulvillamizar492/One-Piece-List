import 'package:flutter/material.dart';
import 'package:onepiecelist/core/styles.dart';

class HeaderWidget
    extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25),
      height: 130,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.headerApp,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            25,
          ),
          bottomRight: Radius.circular(
            25,
          ),
        ),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,

        children: [
          const Column(
            mainAxisSize: MainAxisSize
                .min, // Este me toma el tamaño minimo del elemento
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,
            children: [
              Text(
                'One Piece',
                style: EstiloText.title,
              ),
              Text(
                'Serie',
                style:
                    EstiloText.subtitle,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize
                .min, // Este me toma el tamaño minimo del elemento
            crossAxisAlignment:
                CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                            10,
                          ),
                      color: AppColors
                          .buttonsIcons,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors
                            .white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                            10,
                          ),
                      color: AppColors
                          .buttonsIcons,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons
                            .notifications,
                        color: Colors
                            .white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
