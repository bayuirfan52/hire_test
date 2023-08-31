import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'detail_employee_controller.dart';

class DetailEmployeeView extends GetView<DetailEmployeeController> {
  const DetailEmployeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(controller.employeeData.value.firstName ?? '');
        }),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? const CircularProgressIndicator().centered()
            : VStack([
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
                  child: Image.network(
                    controller.employeeData.value.avatar ?? '',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                VStack([
                  Text(
                    'First Name',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  8.heightBox,
                  Text(
                    controller.employeeData.value.firstName ?? '',
                    style: GoogleFonts.aBeeZee(fontSize: 14),
                  ),
                  12.heightBox,
                  Text(
                    'Last Name',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  8.heightBox,
                  Text(
                    controller.employeeData.value.lastName ?? '',
                    style: GoogleFonts.aBeeZee(fontSize: 14),
                  ),12.heightBox,
                  Text(
                    'Email',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  8.heightBox,
                  Text(
                    controller.employeeData.value.email ?? '',
                    style: GoogleFonts.aBeeZee(fontSize: 14),
                  ),
                ]).p24().scrollVertical()
              ]);
      }),
    );
  }
}
