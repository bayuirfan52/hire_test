import 'package:another_flushbar/flushbar_helper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hire_test/app/core/base/base_controller.dart';
import 'package:hire_test/app/data/remote/api_exception.dart';
import 'package:hire_test/app/data/request/login_entity.dart';
import 'package:hire_test/app/data/response/token_entity.dart';
import 'package:hire_test/app/helper/preference_helper.dart';
import 'package:hire_test/app/routes/app_pages.dart';

class LoginController extends BaseController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (!EmailValidator.validate(emailController.text)) {
      FlushbarHelper.createError(message: 'Enter a valid email format').show(Get.context!);
      return;
    }

    if (passwordController.text.isEmpty) {
      FlushbarHelper.createError(message: 'Enter your password first').show(Get.context!);
      return;
    }

    var loginData = LoginEntity()
      ..email = emailController.text
      ..password = passwordController.text;

    isLoading.value = true;
    httpService.httpPost(endpoint: '/api/login', body: loginData.toJson()).then((value) {
      isLoading.value = false;

      final response = TokenEntity.fromJson(value.body);
      PreferenceHelper.setUserToken(response.token);
      Get.offAllNamed(Routes.HOME);
    }).catchError((error) {
      var exception = error as ApiException;
      isLoading.value = false;

      FlushbarHelper.createError(message: exception.message).show(Get.context!);
    });
  }
}
