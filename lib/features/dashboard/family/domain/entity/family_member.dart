import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_member.freezed.dart';
part 'family_member.g.dart';

@freezed
class FamilyMember with _$FamilyMember {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FamilyMember(
      {int? id,
      String? image,
      String? name,
      String? gender,
      String? dob,
      int? weight,
      String? relation}) = _FamilyMember;

  const FamilyMember._();

  factory FamilyMember.fromJson(Map<String, Object?> json) =>
      _$FamilyMemberFromJson(json);

  factory FamilyMember.empty() => const FamilyMember();

  Future<FormData> toForm() async {
    return FormData.fromMap({
      "id": id,
      "name": name,
      "gender": gender,
      "dob": dob,
      "weight": weight,
      "relation": relation,
      "image": image.isNotNullNotEmpty
          ? image!.startsWith("http")
              ? image
              : await MultipartFile.fromFile(image!, filename: "pfpimage.jpg")
          : null
    });
  }
}
