import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: VStack(
          [
            const Text(
              'Employee CRUD',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            24.heightBox,
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              controller: controller.emailController,
            ),
            12.heightBox,
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              obscureText: true,
              controller: controller.passwordController,
            ),
            24.heightBox,
            Obx(
              () => Visibility(
                visible: controller.isLoading.value,
                child: const CircularProgressIndicator(),
              ),
            ),
            Obx(
              () => Visibility(
                visible: !controller.isLoading.value,
                child: MaterialButton(
                  onPressed: () => controller.login(),
                  color: Colors.blue.shade500,
                  textColor: Colors.white,
                  child: const Text('Login'),
                ).wFull(context),
              ),
            ),
          ],
          crossAlignment: CrossAxisAlignment.center,
        ).p24(),
      ),
    );
  }
}
