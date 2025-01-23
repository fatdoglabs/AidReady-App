import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.freezed.dart';
part 'profile_info.g.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProfileInfo({
    int? id,
    String? image,
    String? name,
    String? gender,
    String? dob,
    String? lastDonatedDate,
    double? weight,
    String? bloodGroup,
    bool? dontKnowBloodType,
  }) = _ProfileInfo;

  const ProfileInfo._();

  factory ProfileInfo.fromJson(Map<String, Object?> json) =>
      _$ProfileInfoFromJson(json);

  factory ProfileInfo.empty() => const ProfileInfo();
  Future<FormData> toPersonalJson() async {
    return FormData.fromMap({
      "name": name,
      "image": await MultipartFile.fromFile(image!, filename: "pfpimage.jpg"),
    });
  }

  Map<String, dynamic> toPhysicalJson() => {
        'dob': dob,
        'weight': weight,
        'gender': gender,
      };

  Map<String, dynamic> toMedicalJson() => {
        'blood_group': bloodGroup ?? "dontknow",
      };

  Map<String, dynamic> toUpdateProfileJson() => {
        'family_member_id': id,
        'blood_group': bloodGroup,
        'last_donated_date': lastDonatedDate,
      };
}
