import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/create_employee_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/create_employee_entity.g.dart';

@JsonSerializable()
class CreateEmployeeEntity {
	String? name;
	String? job;

	CreateEmployeeEntity();

	factory CreateEmployeeEntity.fromJson(Map<String, dynamic> json) => $CreateEmployeeEntityFromJson(json);

	Map<String, dynamic> toJson() => $CreateEmployeeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}