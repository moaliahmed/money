import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money/pages/login/screens/login_screen.dart';

import '../../../core/assets_manager.dart';
import '../../../core/string_manager.dart';
import '../component/button_component.dart';
import '../component/text_form_field_component.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .05,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      ImageAssets.coinMoneyLogo,
                      // Update with your actual file path
                      width: MediaQuery.of(context).size.width * .75,
                      fit: BoxFit.fill,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: height * .05),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(.05),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  AppString.signUp,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          TextFormFieldComponent(
                            title: AppString.fullName,
                            icons: Icons.person_2_outlined,
                            textEditingController: nameController,
                          ),
                          TextFormFieldComponent(
                            title: AppString.email,
                            icons: Icons.email_outlined,
                            textEditingController: emailController,
                          ),
                          TextFormFieldComponent(
                            title: AppString.phone,
                            icons: Icons.phone,
                            textEditingController: phoneController,
                          ),
                          TextFormFieldComponent(
                            hide: true,
                            title: AppString.password,
                            icons: Icons.lock_outline_rounded,
                            textEditingController: passwordController,
                          ),
                          SizedBox(
                            height: height*.01,
                          ),
                          ButtonComponent(
                            title: AppString.signUp,
                            function: () {

                            },
                          ),
                          SizedBox(height: height * .01),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(
                                  'Do ${AppString.haveAnAccount}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(fontSize: 16),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignInView(),
                                        ));
                                  },
                                  child: Text(AppString.signIn,
                                      style: TextStyle(
                                          fontSize: 16,
                                        color: Theme.of(context).colorScheme.primary,)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
