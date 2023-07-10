import 'package:flutter/material.dart';
import '../modules/mod_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back!',
              style: Styles.header,
            ),
            Text(
              'John Doe',
              style: Styles.subtitle,
            )
          ],
        ),
        const CircleAvatar(
          child: Text('JD'),
        )
      ],
    );
  }
}
