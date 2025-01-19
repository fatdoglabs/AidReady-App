import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

import 'info_chip.dart';

class ChipSelectModal<T> extends StatefulWidget {
  const ChipSelectModal({
    super.key,
    this.initialIndex,
    required this.title,
    required this.items,
  });

  final int? initialIndex;
  final String title;
  final List<T> items;

  @override
  State<ChipSelectModal<T>> createState() => _ChipSelectModalState<T>();
}

class _ChipSelectModalState<T> extends State<ChipSelectModal<T>> {
  int index = -1;

  @override
  void initState() {
    super.initState();
    index = widget.initialIndex ?? -1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Text(
                  widget.title,
                  style: bold.copyWith(fontSize: 18.0, color: primaryDark950),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pop(index != -1 ? widget.items[index] : null);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Save',
                    style: bold.copyWith(fontSize: 12.0, color: primary500),
                  ),
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.selectRelation,
                style: semibold.copyWith(color: primaryDark700),
              ),
              5.horizontalSpace,
              Text(
                '(${context.l10n.selectOneRelation})',
                style: regular.copyWith(fontSize: 12.0, color: primaryDark500),
              ),
            ],
          ),
          16.verticalSpace,
          Wrap(
            children: widget.items.map(
              (item) {
                final selected = index == widget.items.indexOf(item);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      index = widget.items.indexOf(item);
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10.0, right: 10.0),
                    child: InfoChip(
                      color: selected ? primary500 : primary50,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 20.0),
                      child: Text(
                        item as String,
                        style: regular.copyWith(
                            color: selected ? Colors.white : primaryDark950),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
