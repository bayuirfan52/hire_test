import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/detail_employee_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/detail_employee_entity.g.dart';

@JsonSerializable()
class DetailEmployeeEntity {
	DetailEmployeeData? data;
	DetailEmployeeSupport? support;

	DetailEmployeeEntity();

	factory DetailEmployeeEntity.fromJson(Map<String, dynamic> json) => $DetailEmployeeEntityFromJson(json);

	Map<String, dynamic> toJson() => $DetailEmployeeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailEmployeeData {
	int? id;
	String? email;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
	String? avatar;

	DetailEmployeeData();

	factory DetailEmployeeData.fromJson(Map<String, dynamic> json) => $DetailEmployeeDataFromJson(json);

	Map<String, dynamic> toJson() => $DetailEmployeeDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DetailEmployeeSupport {
	String? url;
	String? text;

	DetailEmployeeSupport();

	factory DetailEmployeeSupport.fromJson(Map<String, dynamic> json) => $DetailEmployeeSupportFromJson(json);

	Map<String, dynamic> toJson() => $DetailEmployeeSupportToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}