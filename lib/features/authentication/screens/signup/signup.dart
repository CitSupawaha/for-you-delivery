import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:for_you_delivery/common/widgets/login_signup/form_divider.dart';
import 'package:for_you_delivery/common/widgets/login_signup/socail_button.dart';
import 'package:for_you_delivery/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle:SystemUiOverlayStyle.dark),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Divider
              const TFormDivider(dividerText: "Or Sign Up With"),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Social Button
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
