import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/password_visible/password_visible_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/validate/validate_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/extentions_string.dart';

import '../../../../../assets/colors/colors.dart';
import '../../../../../assets/project_strings.dart';
import '../../../../../core/routers/app_router.gr.dart';
import '../../../widgets/widget_stack_bar.dart';
import '../bloc/authentication_bloc.dart';

@RoutePage()
class AuthenticationPage extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _emailValidate = false;
  bool _passwordValidate = false;
  AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                image,
              ),
            ),
            Expanded(
              flex: 3,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  BlocBuilder<ValidateBloc, bool>(
                    builder: (context, state) {
                      return TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            errorText: state ? null : errorEmailHint,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: emailHint),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: BlocBuilder<PasswordVisibleBloc, bool>(
                      builder: (context, state) {
                        return BlocBuilder<ValidateBloc, bool>(
                          builder: (context, state) {
                            return TextField(
                              controller: _password,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText:
                                  context.read<PasswordVisibleBloc>().state,
                              decoration: InputDecoration(
                                errorText: state ? null : errorPasswordHint,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: passwordHint,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    context.read<PasswordVisibleBloc>().state
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 18,
                                  ),
                                  onPressed: () {
                                    context.read<PasswordVisibleBloc>().state ==
                                            false
                                        ? context
                                            .read<PasswordVisibleBloc>()
                                            .add(PasswordTrue())
                                        : context
                                            .read<PasswordVisibleBloc>()
                                            .add(PasswordFalse());
                                  },
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child:
                        BlocListener<AuthenticationBloc, AuthenticationState>(
                      listener: (context, state) {
                        if (state is AuthenticationInitial) {
                          FlutterNativeSplash.remove();
                        } else if (state is AuthenticationSuccess) {
                          AutoRouter.of(context)
                              .replace(CustomBottomBarRoute());
                        } else if (state is AuthenticationDownload) {
                          AutoRouter.of(context)
                              .replace(CustomBottomBarRoute());
                        } else if (state is AuthenticationError) {
                          widgetSnackBar(context: context, text: state.message);
                        }
                      },
                      child: GestureDetector(
                        onTap: () {
                          if (context.read<AuthenticationBloc>().state
                              is AuthenticationLoading) {
                          } else {
                            if (_email.text.isNotEmpty &&
                                _password.text.isNotEmpty) {
                              _passwordValidate =
                                  _password.text.isValidPassword();
                              _emailValidate = _email.text.isValidEmail();
                              if (_emailValidate && _passwordValidate) {
                                context
                                    .read<ValidateBloc>()
                                    .add(ValidateTrue());
                                context.read<AuthenticationBloc>().add(
                                      GetAuthentication(
                                        email: _email.text,
                                        password: _password.text,
                                      ),
                                    );
                              } else {
                                context
                                    .read<ValidateBloc>()
                                    .add(ValidateFalse());
                              }
                            } else {
                              context.read<ValidateBloc>().add(ValidateFalse());
                            }
                          }
                        },
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: mainColorBlue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 5.0,
                              ),
                              child: BlocBuilder<AuthenticationBloc,
                                  AuthenticationState>(
                                builder: (context, state) {
                                  if (state is AuthenticationLoading) {
                                    return const CircularProgressIndicator();
                                  } else {
                                    return Text(
                                      buttonInput,
                                      style: TextStyle(color: whiteColor),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(AuthorizationRoute());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            registrationButton,
                            style: TextStyle(color: grey),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
