import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/auth/presentation/widgets/login_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "context.l10n.createAnAccount",
          // style: text16PxMedium.rubik.button.lineHeight(24),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
          33.verticalSpace,
          Text(
            "context.l10n.whoThere",
            //style: text24PxBold.rubik.button.lineHeight(36),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            "context.l10n.loginHelpText",
            //style: text14PxRegular.rubik.darkGrey.lineHeight(21),
            textAlign: TextAlign.center,
          ),
          50.verticalSpace,
          LoginForm(),
          40.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "context.l10n.alreadyHaveAnAccount",
                //style: text14PxRegular.rubik.darkGrey.lineHeight(21),
              ),
              InkWell(
                onTap: () {
                  context.router.maybePop(1);
                },
                child: Text(
                  "ontext.l10n.login",
                  //style: text14PxMedium.rubik.iconOrange.lineHeight(21),
                ).px(10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
