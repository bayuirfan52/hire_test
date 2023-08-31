import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
        centerTitle: true,
        actions: [
          MaterialButton(
            onPressed: () => showLogoutAlert(),
            textColor: Colors.white,
            child: const Text('Logout'),
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const CircularProgressIndicator().centered()
            : ListView.separated(
                itemBuilder: (context, index) {
                  final item = controller.listEmployee[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(item.avatar ?? ''),
                    ),
                    title: Text(
                      '${item.firstName} ${item.lastName}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(item.email ?? ''),
                    onTap: () => controller.goToDetailEmployee(item.id),
                  );
                },
                separatorBuilder: (context, index) => Container(height: 8),
                itemCount: controller.listEmployee.length,
              ).p24(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.goToAddEmployee(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void showLogoutAlert() {
    Get.defaultDialog(
      title: 'Attention',
      content: const Text('Are you sure to logout?'),
      onConfirm: () => controller.logout(),
      onCancel: () => Get.back(),
      confirmTextColor: Colors.white,
      cancelTextColor: Colors.blue,
    );
  }
}
