import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'create_employee_controller.dart';

class CreateEmployeeView extends GetView<CreateEmployeeController> {
  const CreateEmployeeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateEmployeeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateEmployeeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
