import 'package:flutter/material.dart';
import '../widgets/HomeHeader.dart';
import '../widgets/SearchInput.dart';
import '../modules/mod_styles.dart';
import '../widgets/CategoryList.dart';
import '../widgets/MarketCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Column(
        children: [
          const HomeHeader(),
          const SearchInput(),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 15),
            child: Text(
              'Categories',
              style: Styles.subheader,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const CategoryList(),
          const SizedBox(
            height: 10,
          ),
          const MarketsCard()
        ],
      ),
    )));
  }
}
