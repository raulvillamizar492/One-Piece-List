import 'package:flutter/material.dart';
import 'package:onepiecelist/core/styles.dart';
import 'package:onepiecelist/widgets/bloquePersonaje.dart';
import 'package:onepiecelist/widgets/header_widget.dart';
import 'package:onepiecelist/widgets/horizontal_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() =>
      _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.backgroundApp,
      body: const Column(
        children: [
          HeaderWidget(),
          HorizontalList(),
          SizedBox(height: 2),
          bloquePersonaje(),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
    );
  }
}
