import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(right: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12.0,
            spreadRadius: 4.0,
            color: containerShadow,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum is not simply random text.',
                  style: bold.copyWith(color: primaryDark950),
                ),
                Text(
                  'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                  style: regular.copyWith(color: primaryDark600),
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: 72.0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
