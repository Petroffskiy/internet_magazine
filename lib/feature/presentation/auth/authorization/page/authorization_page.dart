import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/validate/validate_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/extentions_string.dart';

@RoutePage()
class AuthorizationPage extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  bool _passwordVisible = false;
  bool _passwordValidate = false;
  bool _emailValidate = false;
  bool _nameValidate = false;

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
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: emailHint),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: BlocBuilder<ValidateBloc, bool>(
                      builder: (context, state) {
                        return TextField(
                          controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _passwordVisible,
                          decoration: InputDecoration(
                            errorText: state ? null : errorPasswordHint,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: passwordHint,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 18,
                              ),
                              onPressed: () {
                                _passwordVisible = !_passwordVisible;
                              },
                              color: Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        if (_email.text.isNotEmpty &&
                            _password.text.isNotEmpty &&
                            _name.text.isNotEmpty) {
                          _passwordValidate = _password.text.isValidPassword();
                          _emailValidate = _email.text.isValidEmail();

                          if (_emailValidate &&
                              _passwordValidate &&
                              _nameValidate) {
                            //TODO: here go to new page
                            context.read<ValidateBloc>().add(ValidateTrue());
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
                  const Spacer(),
                  GestureDetector(
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
