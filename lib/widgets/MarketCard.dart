import 'dart:ffi';

import 'package:flutter/material.dart';

class MarketsCard extends StatefulWidget {
  const MarketsCard({super.key});

  @override
  State<MarketsCard> createState() => _MarketsCardState();
}

class _MarketsCardState extends State<MarketsCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg"),
            fit: BoxFit.cover),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    Text(
                      '2000',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 22,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 60,
            width: 320,
            padding: const EdgeInsets.only(left: 5, right: 5, top: 1),
            decoration: BoxDecoration(
              color: const Color.fromARGB(38, 255, 255, 255),
              border:
                  Border.all(color: const Color.fromARGB(49, 255, 255, 255)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('testing'),
          )
        ],
      ),
    );
  }
}
