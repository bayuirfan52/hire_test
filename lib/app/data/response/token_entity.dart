import 'package:hire_test/generated/json/base/json_field.dart';
import 'package:hire_test/generated/json/token_entity.g.dart';
import 'dart:convert';
export 'package:hire_test/generated/json/token_entity.g.dart';

@JsonSerializable()
class TokenEntity {
	String? token;

	TokenEntity();

	factory TokenEntity.fromJson(Map<String, dynamic> json) => $TokenEntityFromJson(json);

	Map<String, dynamic> toJson() => $TokenEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}