import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/member.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/news_item.dart';
import 'package:flutter/material.dart';

class NewsUpdatesList extends StatelessWidget {
  const NewsUpdatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(
            'News and Updates',
            style: bold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          trailing: Text(
            'See All',
            style: regular.copyWith(fontSize: 12.0, color: primary600),
          ),
        ),
        SizedBox(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
        )
      ],
    );
  }
}
