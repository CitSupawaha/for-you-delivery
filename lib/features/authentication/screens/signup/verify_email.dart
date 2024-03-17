import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_you_delivery/common/widgets/success_screen/success_screen.dart';
import 'package:for_you_delivery/features/authentication/screens/login/login.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
         systemOverlayStyle:
               SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SvgPicture.asset(
                Timages.signup4,
                semanticsLabel: 'Acme Logo',
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              // Image(
              //   image: const AssetImage(Timages.signup3),
              //   width: THelperFunctions.screenWidth() * 0.6,
              // ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & SubTitle
              Text(
                'Verify your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                'support@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                'Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personailzed Offers.',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: Timages.signup3,
                        title: 'Your account successfully created!',
                        subTitle:
                            'Welcome to Your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!',
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
