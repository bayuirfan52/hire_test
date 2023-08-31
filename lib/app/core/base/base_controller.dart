import 'package:get/get.dart';
import 'package:hire_test/app/data/remote/http_service.dart';

class BaseController extends GetxController {
  final httpService = Get.find<HttpService>();
  final isLoading = false.obs;
}