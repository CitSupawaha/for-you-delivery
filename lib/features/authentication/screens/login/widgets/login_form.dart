import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:for_you_delivery/features/authentication/screens/signup/signup.dart';
import 'package:for_you_delivery/navigation_menu.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), labelText: 'Email'),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),

          // Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: 'Password'),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField / 2,
          ),

          // Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Remeber Me
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(
                    'Forgot Your Password?',
                    style: TextStyle(color: TColors.primaryColor),
                  ))
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text("Sign In"))),

          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(const SignupScreen()),
                  child: const Text("Create Account")))
        ],
      ),
    ));
  }
}
