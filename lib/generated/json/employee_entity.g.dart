import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/response/employee_entity.dart';

EmployeeEntity $EmployeeEntityFromJson(Map<String, dynamic> json) {
  final EmployeeEntity employeeEntity = EmployeeEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    employeeEntity.name = name;
  }
  final String? job = jsonConvert.convert<String>(json['job']);
  if (job != null) {
    employeeEntity.job = job;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    employeeEntity.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    employeeEntity.createdAt = createdAt;
  }
  return employeeEntity;
}

Map<String, dynamic> $EmployeeEntityToJson(EmployeeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['job'] = entity.job;
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  return data;
}

extension EmployeeEntityExtension on EmployeeEntity {
  EmployeeEntity copyWith({
    String? name,
    String? job,
    String? id,
    String? createdAt,
  }) {
    return EmployeeEntity()
      ..name = name ?? this.name
      ..job = job ?? this.job
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt;
  }
}