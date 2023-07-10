import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      // height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.blueGrey.shade50,
          
        ),
        color: Colors.blueGrey.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(IconlyLight.search, size: 20),
            border: InputBorder.none,
            hintText: 'Search markets',
            alignLabelWithHint: true,
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
