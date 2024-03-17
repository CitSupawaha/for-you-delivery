import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/screens/signup/verify_email.dart';
import 'package:for_you_delivery/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(
                  labelText: "First Name", prefixIcon: Icon(Iconsax.user)),
              expands: false,
            )),
            const SizedBox(
              width: TSizes.spaceBtwInputField,
            ),
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(
                  labelText: "Last Name", prefixIcon: Icon(Iconsax.user)),
              expands: false,
            ))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        // Username
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Username", prefixIcon: Icon(Iconsax.user_edit)),
          expands: false,
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        // Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Email", prefixIcon: Icon(Iconsax.direct)),
          expands: false,
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        //Phone Number
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Phone Number", prefixIcon: Icon(Iconsax.call)),
          expands: false,
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        // Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputField,
        ),

        /// Terms&Conditions Checkbox
        const TTermsAndConditionCheckbox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(const VerifyEmailScreen()),
              child: const Text("Create Account")),
        )
      ],
    ));
  }
}
