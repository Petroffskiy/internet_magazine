import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/personal_bloc/personal_bloc.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/visual_bloc/visible_bloc.dart';
import 'package:internet_magazine/feature/presentation/widgets/extentions_string.dart';
import 'package:internet_magazine/feature/presentation/widgets/widget_stack_bar.dart';

import "dart:developer" as dev;

@RoutePage()
class PersonalPage extends StatelessWidget {
  PersonalPage({super.key});
  final TextEditingController _changePassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VisibleBloc(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            BlocConsumer<PersonalBloc, PersonalState>(
              listener: (context, statePersonal) {
                if (statePersonal is PersonalError) {
                  widgetSnackBar(
                      context: context,
                      text: context.read<PersonalError>().message);
                } else if (statePersonal is PersonalComplete) {
                  dev.log(name: "personal page", 'complete state');
                  context.router.replace(const AuthEmptyRoute());
                }
              },
              builder: (context, statePersonal) {
                context.read<PersonalBloc>().add(GetUserData());
                if (statePersonal is PersonalDownload) {
                  return Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          child: Image.network(image),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text("Ваше имя: ${statePersonal.userData.name}"),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          "Ваш email: ${statePersonal.userData.login}",
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          "Уровень доступа: ${statePersonal.userData.role}",
                        ),
                      ),
                      const Divider(),
                      BlocBuilder<VisibleBloc, bool>(
                        builder: ((contextVisible, stateVisible) {
                          return AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: stateVisible ? 1.0 : 0.0,
                            child: SizedBox(
                              height: stateVisible ? 100 : 0,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child:
                                        Text(statePersonal.userData.password),
                                  ),
                                  const Divider(),
                                  TextField(
                                    controller: _changePassword,
                                    decoration: InputDecoration(
                                      hintText: changePassword,
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          if (_changePassword.text.isNotEmpty) {
                                            if (_changePassword.text
                                                .isValidPassword()) {
                                              dev.log(_changePassword.text);
                                              contextVisible
                                                  .read<PersonalBloc>()
                                                  .add(
                                                    UpdatePassword(
                                                      password:
                                                          _changePassword.text,
                                                    ),
                                                  );
                                            } else {
                                              widgetSnackBar(
                                                  context: contextVisible,
                                                  text:
                                                      errorPasswordChangeHint);
                                            }
                                          } else {
                                            widgetSnackBar(
                                                context: contextVisible,
                                                text: errorPasswordChangeEmpty);
                                          }
                                        },
                                        icon: const Icon(Icons.check_box),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            if (context.read<VisibleBloc>().state == true) {
                              context.read<VisibleBloc>().add(Invisible());
                            } else {
                              context.read<VisibleBloc>().add(Visible());
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: mainColorBlue,
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                child: Text(
                                  context.read<VisibleBloc>().state
                                      ? invisiblePassword
                                      : visiblePassword,
                                  style: TextStyle(color: grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                } else if (statePersonal is PersonalLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return const Center(
                    child: Text("вы не авторизованы"),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
