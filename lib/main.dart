import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hire_test/app/data/remote/http_service.dart';
import 'package:hire_test/app/utils/logger.dart';

import 'app/routes/app_pages.dart';

void main() {
  runZonedGuarded(() {
    GetStorage.init();
    Get.lazyPut<GetStorage>(() => GetStorage());
    Get.put(
      HttpService(
        baseUrl: 'https://reqres.in/',
        timeout: const Duration(
          seconds: 30,
        ),
        baseHeaders: {
          "Content-Type" : "application/json"
        }
      ),
    );
    runApp(const MyApp());
  }, (error, stack) {
    logE('$error - $stack');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Application',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: kDebugMode,
      );
}
