import 'package:flutter/material.dart';
import 'package:onepiecelist/core/styles.dart';
import 'package:onepiecelist/widgets/card.dart';

class HorizontalList
    extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() =>
      _HorizontalListState();
}

class _HorizontalListState
    extends State<HorizontalList> {
  double altoPantalla = 0;
  @override
  Widget build(BuildContext context) {
    altoPantalla = MediaQuery.of(
      context,
    ).size.height;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            left: 12,
          ),
          child: Text(
            "Portadas",
            style:
                EstiloText.subtitlelist,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: altoPantalla * .30,
          child: ListView(
            scrollDirection:
                Axis.horizontal,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(
                      left: 5,
                    ),
                child: Cards(
                  image: 'p1.jpg',
                  title: 'Portada 1',
                  subtitle: '2023',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(
                      left: 5,
                    ),
                child: Cards(
                  image: 'p2.jpg',
                  title: 'Portada 2',
                  subtitle: '2018',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(
                      left: 5,
                    ),
                child: Cards(
                  image: 'p3.jpg',
                  title: 'Portada 3',
                  subtitle: '2017',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
