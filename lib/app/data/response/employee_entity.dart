import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/employee_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/employee_entity.g.dart';

@JsonSerializable()
class EmployeeEntity {
	String? name;
	String? job;
	String? id;
	String? createdAt;

	EmployeeEntity();

	factory EmployeeEntity.fromJson(Map<String, dynamic> json) => $EmployeeEntityFromJson(json);

	Map<String, dynamic> toJson() => $EmployeeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}