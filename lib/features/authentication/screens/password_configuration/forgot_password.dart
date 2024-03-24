import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Text('Forget password',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
                "Don't worry sometimes people can forget too, enter your email and we will send you a password reset link.",
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email", prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text("Submit")),
            )
          ],
        ),
      ),
    );
  }
}
