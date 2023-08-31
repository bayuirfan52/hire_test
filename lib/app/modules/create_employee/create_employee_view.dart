import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'create_employee_controller.dart';

class CreateEmployeeView extends GetView<CreateEmployeeController> {
  const CreateEmployeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Employee'),
        centerTitle: true,
      ),
      body: VStack([
        Text(
          'Name',
          style: GoogleFonts.aBeeZee(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        8.heightBox,
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          controller: controller.nameController,
        ),
        24.heightBox,
        Text(
          'Job',
          style: GoogleFonts.aBeeZee(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        8.heightBox,
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Job',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          controller: controller.jobController,
        )
      ]).scrollVertical().p24(),
      bottomNavigationBar: MaterialButton(
        onPressed: () => controller.save(),
        color: Colors.blue.shade500,
        child: Text(
          'Save',
          style: GoogleFonts.aBeeZee(color: Colors.white),
        ),
      ).p24(),
    );
  }
}
