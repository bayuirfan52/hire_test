import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'detail_employee_controller.dart';

class DetailEmployeeView extends GetView<DetailEmployeeController> {
  const DetailEmployeeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailEmployeeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailEmployeeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
