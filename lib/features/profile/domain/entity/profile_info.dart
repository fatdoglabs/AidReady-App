import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.freezed.dart';
part 'profile_info.g.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProfileInfo(
      {@Default("") String pfpUrl,
      @Default("") String fullName,
      String? gender,
      String? dob,
      double? weight,
      String? bloodgroup,
      bool? dontKnowBloodType}) = _ProfileInfo;

  const ProfileInfo._();

  factory ProfileInfo.fromJson(Map<String, Object?> json) =>
      _$ProfileInfoFromJson(json);

  factory ProfileInfo.empty() => const ProfileInfo();
  Future<FormData> toPersonalJson() async {
    return FormData.fromMap({
      "name": fullName,
      "image": await MultipartFile.fromFile(pfpUrl, filename: "pfpimage.jpg")
    });
  }

  Map<String, dynamic> toPhysicalJson() => {
        'dob': dob,
        'weight': weight,
        'gender': gender,
      };
  Map<String, dynamic> toMedicalJson() => {
        'blood_group': bloodgroup,
      };
}
