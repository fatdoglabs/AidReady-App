import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:flutter/material.dart';

typedef ItemBuilder<T> = Widget Function(T item);

class OptionModal<T> extends StatelessWidget {
  const OptionModal({
    super.key,
    required this.title,
    required this.items,
    required this.itemBuilder,
  });

  final String title;
  final List<T> items;
  final ItemBuilder<T> itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: bold.copyWith(fontSize: 20.0, color: primaryDark950),
          ),
          16.verticalSpace,
          ListView.builder(
            itemBuilder: (_, index) => itemBuilder(items[index]).py(16.0),
            shrinkWrap: true,
            itemCount: items.length,
          )
        ],
      ),
    );
  }
}
