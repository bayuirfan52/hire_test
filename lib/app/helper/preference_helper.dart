// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const _USER_TOKEN = 'USER_TOKEN';
mixin PreferenceHelper {
  static final _pref = Get.find<GetStorage>();

  static String getUserToken() => _pref.read(_USER_TOKEN);
  static void setUserToken(String? token) => _pref.write(_USER_TOKEN, token);
}