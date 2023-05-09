import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/bloc/authorization_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/password_visible/password_visible_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/validate/validate_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/extentions_string.dart';
import 'package:internet_magazine/feature/presentation/widgets/widget_stack_bar.dart';

@RoutePage()
class AuthorizationPage extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  bool _passwordVisible = false;
  bool _passwordValidate = false;
  bool _emailValidate = false;

  AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://mzbk-rb.ru/wp-content/uploads/2018/02/logo-1440x720-2.jpg'),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ValidateBloc, bool>(
                    builder: (context, state) {
                      return TextField(
                        controller: _name,
                        decoration: InputDecoration(
                          errorText: state ? null : errorNameHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: namedHint,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: BlocBuilder<ValidateBloc, bool>(
                      builder: (context, state) {
                        return TextField(
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
                    padding: const EdgeInsets.only(top: 12.0, bottom: 0),
                    child: BlocListener<AuthorizationBloc, AuthorizationState>(
                      listener: (context, state) {
                        if (state is AuthorizationDownload) {
                          AutoRouter.of(context).replace(const MainCardRoute());
                        } else if (state is AuthorizationError) {
                          widgetSnackBar(context: context, text: state.message);
                        }
                      },
                      child: GestureDetector(
                        onTap: () {
                          if (_email.text.isNotEmpty &&
                              _password.text.isNotEmpty &&
                              _name.text.isNotEmpty) {
                            _passwordValidate =
                                _password.text.isValidPassword();
                            _emailValidate = _email.text.isValidEmail();

                            if (_emailValidate && _passwordValidate) {
                              context.read<ValidateBloc>().add(ValidateTrue());
                              context.read<AuthorizationBloc>().add(
                                    GetAuthorization(
                                      email: _email.text,
                                      name: _name.text,
                                      password: _password.text,
                                    ),
                                  );
                            } else {
                              context.read<ValidateBloc>().add(ValidateFalse());
                            }
                          } else {
                            context.read<ValidateBloc>().add(ValidateFalse());
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
                              child: Text(
                                buttonRegistration,
                                style: TextStyle(color: whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SingleChildScrollView(
                    child: GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).pop();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: blackColor,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Text(
                              authenticateButton,
                              style: TextStyle(color: grey),
                            ),
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
