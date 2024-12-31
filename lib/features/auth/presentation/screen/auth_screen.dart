import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/auth/presentation/widgets/auth_tab.dart';
import 'package:aid_ready/features/auth/presentation/widgets/login_tab_view.dart';
import 'package:aid_ready/features/auth/presentation/widgets/register_tab_view.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            currentIndex == 0
                ? context.l10n.createAnAccount
                : context.l10n.login,
            style: text16PxMedium.rubik.button.lineHeight(24),
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          pinned: true,
          centerTitle: true,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: AuthTab(
                  title: context.l10n.createAnAccount,
                  isActive: currentIndex == 0,
                  onChange: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  }),
            ),
            Expanded(
              child: AuthTab(
                  title: context.l10n.login,
                  isActive: currentIndex == 1,
                  onChange: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  }),
            ),
          ],
        ).sliver(),
        20.verticalSpace.sliver(),
        IndexedStack(
          index: currentIndex,
          children: [
            RegisterTabView(
                // onPop: (value) {
                //   currentIndex = value;
                // },
                // email: email,
                // invitedGuardianInfoData: invitedGuardianInfoData,
                ),
            LoginTabView(
                // invitedGuardianInfoData: invitedGuardianInfoData,
                // onPop: (value) {
                //   currentIndex = value;
                // },
                ),
          ],
        ).sliver()
      ],
    ));
  }
}
