import 'package:flutter/material.dart';
import 'package:repair/widget/text.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: mainText('Все заказы работника', Colors.white),
      ),
      body: Column(),
    );
  }
}
