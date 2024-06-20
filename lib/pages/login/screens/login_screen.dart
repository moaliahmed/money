import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money/cubit/app_cubit.dart';
import 'package:money/pages/login/screens/signup_screen.dart';
import 'package:money/pages/main_screen/home_view.dart';

import '../../../core/assets_manager.dart';
import '../../../core/routes_manager.dart';
import '../../../core/string_manager.dart';
import '../component/button_component.dart';
import '../component/text_form_field_component.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailEditingController = TextEditingController();

  TextEditingController passwordEditingController = TextEditingController();

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if(state is LoginSuccess){
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Login Successfully',
              desc: 'Contain to App',
              dialogBackgroundColor: Theme.of(context).colorScheme.background,
              btnCancelOnPress: () {},
              btnOkOnPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ));
              },
            ).show();
          }
          else if (state is RegisterError){
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.rightSlide,
              title: 'Email already exists.',
              desc: 'try Another Email ',
              dialogBackgroundColor: Theme.of(context).colorScheme.background,
              btnOkOnPress: () {
              },
            ).show();
          }


      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
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
                      SizedBox(
                        height: height * .1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(.05),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    AppString.loginToYourAccount,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(fontSize: 21),
                                  ),
                                ],
                              ),
                            ),
                            TextFormFieldComponent(
                              title: AppString.email,
                              icons: Icons.email_outlined,
                              textEditingController: emailEditingController,
                            ),
                            TextFormFieldComponent(
                              hide: true,
                              title: AppString.password,
                              icons: Icons.lock_outline_rounded,
                              textEditingController: passwordEditingController,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppString.forgotPassword,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.pushNamed(
                                        context, Routes.forgotPassword),
                                    child: Text(
                                      textAlign: TextAlign.right,
                                      AppString.clickHere,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * .01,
                            ),
                            ButtonComponent(
                              title: AppString.signIn,
                              function: () {
                                cubit.login(emailEditingController.text,
                                    passwordEditingController.text);
                              },
                            ),
                            SizedBox(
                              height: height * .01,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don’t ${AppString.haveAnAccount}',
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
                                            builder: (context) => SignUpView(),
                                          ));
                                    },
                                    child: Text(
                                      AppString.signUp,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
