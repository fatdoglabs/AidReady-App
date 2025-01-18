import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family with _$Family {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Family(
      {String? image,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? relation}) = _Family;

  const Family._();

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  factory Family.empty() => const Family();
}
