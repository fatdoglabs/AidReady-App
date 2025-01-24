import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_bar_provider.g.dart';

@riverpod
class BottomBar extends _$BottomBar {
  @override
  int build() => 0;

  void update(int index) {
    state = index;
  }
}
