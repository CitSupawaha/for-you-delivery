import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/styles/spacing_styles.dart';
import 'package:for_you_delivery/common/widgets/login_signup/form_divider.dart';
import 'package:for_you_delivery/common/widgets/login_signup/socail_button.dart';
import 'package:for_you_delivery/features/authentication/screens/login/widgets/login_form.dart';
import 'package:for_you_delivery/features/authentication/screens/login/widgets/login_header.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title, Sub-Title
             TLoginHeader(),

            // Form
            TLoginForm(),

            TFormDivider(dividerText: "Or Sign in With"),

            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            TSocialButtons()
          ],
        ),
      )),
    );
  }
}



