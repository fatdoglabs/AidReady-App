import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'next_page_provider.g.dart';

@riverpod
class NextPage extends _$NextPage {
  @override
  int build(int startPage) => startPage;

  void update(int index) {
    state = index;
  }
}