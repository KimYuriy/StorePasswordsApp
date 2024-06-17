import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_passwords_app/bloc/local_bloc/core/local_bloc.dart';
import 'package:store_passwords_app/bloc/user_bloc/core/user_bloc.dart';
import 'package:store_passwords_app/ui/reusable/text_field/custom_text_field.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = TextEditingController(), passwordController = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    double maxFormWidth = kIsWeb || screenWidth > 600 ? screenWidth * 0.5 : screenWidth;

    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<UserBloc, UserStates>(
          listener: (context, state) {
            state.maybeWhen(
              usingOffline: () {
                context.read<LocalBloc>().add(const LocalEvents.loadAllData());
                Navigator.pushReplacementNamed(context, '/home');
              },
              orElse: () {}
            );
          },
          builder: (context, state) => Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxFormWidth
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    const Text(
                      "Авторизация",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      controller: loginController,
                      labelText: "Логин"
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: passwordController,
                      labelText: "Пароль",
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Авторизоваться'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text('Зарегистрироваться'),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      child: const Text(
                        'Забыли пароль?',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        context.read<UserBloc>().add(const UserEvents.clickedOffline());
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      child: const Text(
                        'Продолжить оффлайн',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}