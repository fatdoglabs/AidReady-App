import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/info_chip.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/core/widgets/option_modal.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/add_member_form.dart';
import 'package:aid_ready/features/profile/domain/entity/image_source.dart';
import 'package:aid_ready/features/profile/presentation/widgets/gender_group.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/chip_select_modal.dart';

@RoutePage()
class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.addfamilyMember,
          style: bold.copyWith(color: primaryDark950, fontSize: 16.0),
        ),
      ),
      body: AddMemberForm(),
    );
  }
}

