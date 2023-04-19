import 'package:flutter/material.dart';
import 'package:repair/widget/buttons.dart';
import 'package:repair/widget/inputs.dart';
import 'package:repair/widget/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: mainText('Добрро пожаловать в «Ремонт средств связи»!',
                    Colors.black),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: childText('Авторизация:', Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: inputAuth('Номер телефона', false),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: inputAuth('Пароль', false),
              ),
              const Spacer(
                flex: 2,
              ),
              OnBoardingButtons(
                  label: 'Войти', color: Colors.blue, fontColor: Colors.white),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
