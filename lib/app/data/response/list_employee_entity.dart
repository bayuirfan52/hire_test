import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/list_employee_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/list_employee_entity.g.dart';

@JsonSerializable()
class ListEmployeeEntity {
	int? page;
	@JSONField(name: "per_page")
	int? perPage;
	int? total;
	@JSONField(name: "total_pages")
	int? totalPages;
	List<ListEmployeeData>? data;
	ListEmployeeSupport? support;

	ListEmployeeEntity();

	factory ListEmployeeEntity.fromJson(Map<String, dynamic> json) => $ListEmployeeEntityFromJson(json);

	Map<String, dynamic> toJson() => $ListEmployeeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ListEmployeeData {
	int? id;
	String? email;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
	String? avatar;

	ListEmployeeData();

	factory ListEmployeeData.fromJson(Map<String, dynamic> json) => $ListEmployeeDataFromJson(json);

	Map<String, dynamic> toJson() => $ListEmployeeDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ListEmployeeSupport {
	String? url;
	String? text;

	ListEmployeeSupport();

	factory ListEmployeeSupport.fromJson(Map<String, dynamic> json) => $ListEmployeeSupportFromJson(json);

	Map<String, dynamic> toJson() => $ListEmployeeSupportToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}