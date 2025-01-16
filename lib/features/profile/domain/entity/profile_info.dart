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
      @Default(false) bool dontKnowBloodType}) = _ProfileInfo;

  const ProfileInfo._();

  factory ProfileInfo.fromJson(Map<String, Object?> json) =>
      _$ProfileInfoFromJson(json);

  factory ProfileInfo.empty() => const ProfileInfo();
  Map<String, dynamic> toPersonalJson() => {
        'image': pfpUrl,
        'name': fullName,
      };
  Map<String, dynamic> toPhysicalJson() => {
        'dob': dob,
        'weight': weight,
        'gender': gender,
      };
  Map<String, dynamic> toMedicalJson() => {
        'blood_group': bloodgroup,
      };
}
