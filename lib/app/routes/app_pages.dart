import 'package:get/get.dart';
import 'package:hire_test/app/extensions/string_extensions.dart';
import 'package:hire_test/app/helper/preference_helper.dart';

import '../modules/create_employee/create_employee_binding.dart';
import '../modules/create_employee/create_employee_view.dart';
import '../modules/detail_employee/detail_employee_binding.dart';
import '../modules/detail_employee/detail_employee_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final initial = PreferenceHelper.getUserToken().isNullOrEmpty ? Routes.LOGIN : Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_EMPLOYEE,
      page: () => const DetailEmployeeView(),
      binding: DetailEmployeeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_EMPLOYEE,
      page: () => const CreateEmployeeView(),
      binding: CreateEmployeeBinding(),
    ),
  ];
}
