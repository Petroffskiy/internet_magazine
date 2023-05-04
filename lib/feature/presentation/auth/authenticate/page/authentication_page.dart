import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart';

import '../../../../../assets/colors/colors.dart';
import '../../../../../assets/project_strings.dart';
import '../../../../../core/routers/app_router.gr.dart';

@RoutePage()
class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  late bool _passwordValidate;

  @override
  void initState() {
    _passwordValidate = true;

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
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: emailHint),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: TextField(
                      controller: _password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _passwordValidate,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: passwordHint,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordValidate
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordValidate =
                              !_passwordValidate;
                            });
                          },
                          color: Colors.grey,
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GestureDetector(
                      onTap: () {},
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
