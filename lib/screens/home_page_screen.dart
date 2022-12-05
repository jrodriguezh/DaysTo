import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var photo = Random().nextInt(47) + 1;
    final wedding = DateTime(2023, 12, 03);
    final today = DateTime.now();
    final untilWedding = wedding.difference(today).inDays;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/$photo.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(2),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.black38),
                child: const Text(
                  "Días para Nuestra Boda:",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: 'Walter'),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.black38),
                child: Text(
                  "$untilWedding",
                  style: const TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            child: IconButton(
              onPressed: (() {
                setState(() {});
              }),
              icon: const Icon(
                Icons.change_circle_outlined,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
