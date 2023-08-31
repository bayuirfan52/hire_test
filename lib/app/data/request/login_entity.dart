import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/login_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/login_entity.g.dart';

@JsonSerializable()
class LoginEntity {
	String? email;
	String? password;

	LoginEntity();

	factory LoginEntity.fromJson(Map<String, dynamic> json) => $LoginEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}