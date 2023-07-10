import 'package:flutter/material.dart';
import '../data/categories.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  void onCategoryTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: categories
          .asMap()
          .entries
          .map((category) => GestureDetector(
                onTap: () => onCategoryTap(category.key),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: selectedIndex == category.key
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.all(Radius.circular(20))
                        ),
                  child: Text(
                    category.value,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,

                        color: selectedIndex == category.key
                            ? Colors.white
                            : Theme.of(context).primaryColor),
                            
                  ),
                ),
              ))
          .toList(),
    );
    
  }
}
