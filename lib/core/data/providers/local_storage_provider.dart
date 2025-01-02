import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utils/strings.dart';
import '../datasources/local_source.dart';

part 'local_storage_provider.g.dart';

@riverpod
LocalSource localSource(LocalSourceRef ref) =>
    LocalDataSource(Hive.box(kBoxName));
