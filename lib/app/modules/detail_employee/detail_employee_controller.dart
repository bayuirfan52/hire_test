import 'package:another_flushbar/flushbar_helper.dart';
import 'package:get/get.dart';
import 'package:hire_test/app/core/base/base_controller.dart';
import 'package:hire_test/app/data/remote/api_exception.dart';
import 'package:hire_test/app/data/response/detail_employee_entity.dart';

class DetailEmployeeController extends BaseController {
  final employeeData = DetailEmployeeData().obs;
  @override
  void onInit() {
    super.onInit();
    final id = Get.arguments as int;
    getEmployee(id);
  }

  Future<void> getEmployee(int? id) async {
    isLoading.value = true;
    httpService.httpGet(endpoint: '/api/users/$id').then((value) {
      isLoading.value = false;

      final response = DetailEmployeeEntity.fromJson(value.body);
      employeeData.value = response.data!;
    }).catchError((error) {
      var exception = error as ApiException;
      isLoading.value = false;

      FlushbarHelper.createError(message: exception.message).show(Get.context!);
    });
  }
}
