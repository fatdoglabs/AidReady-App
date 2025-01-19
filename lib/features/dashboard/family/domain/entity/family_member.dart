import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_member.freezed.dart';
part 'family_member.g.dart';

@freezed
class FamilyMember with _$FamilyMember {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FamilyMember(
      {String? image,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? relation}) = _FamilyMember;

  const FamilyMember._();

  factory FamilyMember.fromJson(Map<String, Object?> json) =>
      _$FamilyMemberFromJson(json);

  factory FamilyMember.empty() => const FamilyMember();
}