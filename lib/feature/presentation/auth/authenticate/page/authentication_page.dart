import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart';
import 'package:internet_magazine/feature/presentation/widgets/extentions_string.dart';

import '../../../../../assets/colors/colors.dart';
import '../../../../../assets/project_strings.dart';
import '../../../../../core/routers/app_router.gr.dart';
import '../../../widgets/widget_stack_bar.dart';
import '../bloc/authentication_bloc.dart';

@RoutePage()
class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  late bool _passwordVisible;
  late bool _passwordValidate;
  late bool _emailValidate;

  @override
  void initState() {
    _passwordVisible = true;
    _passwordValidate = false;
    _emailValidate = false;

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

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
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (context) =>
                        _emailValidate ? null : emailValidator,
                    decoration: InputDecoration(
                        // errorText: errorEmailHint,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: emailHint),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _passwordVisible,
                      validator: (context) =>
                          _passwordValidate ? null : passwordValidator,
                      decoration: InputDecoration(
                        // errorText: errorPasswordHint,
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
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child:
                        BlocListener<AuthenticationBloc, AuthenticationState>(
                      listener: (context, state) {
                        if (state is AuthenticationDownload) {
                          AutoRouter.of(context).replace(const MainCardRoute());
                        } else if (state is AuthenticationError) {
                          widgetSnackBar(context: context, text: state.message);
                        }
                      },
                      child: GestureDetector(
                        onTap: () {
                          print("tab button");
                          if (_email.text.isNotEmpty &&
                              _password.text.isNotEmpty) {
                            setState(() {
                              _emailValidate = _email.text.isValidEmail();
                              _passwordValidate =
                                  _password.text.isValidPassword();
                              print("email: $_emailValidate");
                              print("password: $_passwordValidate");
                            });
                            if (_emailValidate && _passwordValidate) {
                              BlocProvider.of<AuthenticationBloc>(context).add(
                                GetAuthentication(
                                  password: _password.text,
                                  email: _email.text,
                                ),
                              );
                            } else {
                              _emailValidate = false;
                              _passwordValidate = false;
                            }
                          } else {
                            _emailValidate = false;
                            _passwordValidate = false;
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
                                buttonInput,
                                style: TextStyle(color: whiteColor),
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
                      AutoRouter.of(context).push(const AuthorizationRoute());
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
