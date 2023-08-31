import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hire_test/app/core/base/base_controller.dart';
import 'package:hire_test/app/data/remote/api_exception.dart';
import 'package:hire_test/app/data/request/create_employee_entity.dart';
import 'package:hire_test/app/data/response/employee_entity.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';

class CreateEmployeeController extends BaseController {
  final nameController = TextEditingController();
  final jobController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> save() async {
    if (nameController.text.isEmpty) {
      FlushbarHelper.createError(message: 'Name is required').show(Get.context!);
      return;
    }

    if (jobController.text.isEmpty) {
      FlushbarHelper.createError(message: 'Job is required').show(Get.context!);
      return;
    }

    final request = CreateEmployeeEntity()
      ..name = nameController.text
      ..job = jobController.text;

    final progressDialog = ProgressDialog(Get.context!)..style(
      message: 'Submitting!!'
    );

    await progressDialog.show();

    httpService.httpPost(endpoint: 'api/users', body: request.toJson()).then((value) {
      progressDialog.hide();
      final response = EmployeeEntity.fromJson(value.body);
      Get.back();

      FlushbarHelper.createSuccess(message: 'Created ${response.name} at ${response.createdAt}').show(Get.context!);
    }).catchError((dynamic error) {
      var exception = error as ApiException;
      progressDialog.hide();

      FlushbarHelper.createError(message: exception.message).show(Get.context!);
    });
  }
}
