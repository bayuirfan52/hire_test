import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/error_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/error_entity.g.dart';

@JsonSerializable()
class ErrorEntity {
	String? error;

	ErrorEntity();

	factory ErrorEntity.fromJson(Map<String, dynamic> json) => $ErrorEntityFromJson(json);

	Map<String, dynamic> toJson() => $ErrorEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}