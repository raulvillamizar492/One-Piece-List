import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  Cards({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;
  double anchoTarjeta = 0;
  @override
  Widget build(BuildContext context) {
    anchoTarjeta = MediaQuery.of(
      context,
    ).size.width;
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(
                left: 8,
              ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(
                  18,
                ),

            child: Image.asset(
              'images/$image',
              width: anchoTarjeta * .40,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 4),
        RichText(
          text: TextSpan(
            text: '$title ',
            style: const TextStyle(
              fontSize: 20,
              fontWeight:
                  FontWeight.bold,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight:
                      FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
