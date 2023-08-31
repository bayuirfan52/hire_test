import 'package:another_flushbar/flushbar_helper.dart';
import 'package:get/get.dart';
import 'package:hire_test/app/core/base/base_controller.dart';
import 'package:hire_test/app/data/remote/api_exception.dart';
import 'package:hire_test/app/data/response/list_employee_entity.dart';
import 'package:hire_test/app/helper/preference_helper.dart';
import 'package:hire_test/app/routes/app_pages.dart';

class HomeController extends BaseController {
  final listEmployee = <ListEmployeeData>[].obs;

  @override
  void onReady() {
    super.onReady();
    getEmployee();
  }

  void goToDetailEmployee(int? id) => Get.toNamed(Routes.DETAIL_EMPLOYEE, arguments: id)?.then((value) => getEmployee());

  void goToAddEmployee() => Get.toNamed(Routes.CREATE_EMPLOYEE)?.then((value) => getEmployee());

  Future<void> getEmployee() async {
    isLoading.value = true;
    httpService.httpGet(endpoint: '/api/users').then((value) {
      isLoading.value = false;

      final response = ListEmployeeEntity.fromJson(value.body);
      listEmployee.value = response.data!;
    }).catchError((error) {
      var exception = error as ApiException;
      isLoading.value = false;

      FlushbarHelper.createError(message: exception.message).show(Get.context!);
    });
  }

  void logout() {
    PreferenceHelper.resetData();
    Get.offAllNamed(Routes.LOGIN);
  }
}
