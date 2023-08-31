import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/request/create_employee_entity.dart';

CreateEmployeeEntity $CreateEmployeeEntityFromJson(Map<String, dynamic> json) {
  final CreateEmployeeEntity createEmployeeEntity = CreateEmployeeEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    createEmployeeEntity.name = name;
  }
  final String? job = jsonConvert.convert<String>(json['job']);
  if (job != null) {
    createEmployeeEntity.job = job;
  }
  return createEmployeeEntity;
}

Map<String, dynamic> $CreateEmployeeEntityToJson(CreateEmployeeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['job'] = entity.job;
  return data;
}

extension CreateEmployeeEntityExtension on CreateEmployeeEntity {
  CreateEmployeeEntity copyWith({
    String? name,
    String? job,
  }) {
    return CreateEmployeeEntity()
      ..name = name ?? this.name
      ..job = job ?? this.job;
  }
}