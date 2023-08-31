import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/response/token_entity.dart';

TokenEntity $TokenEntityFromJson(Map<String, dynamic> json) {
  final TokenEntity tokenEntity = TokenEntity();
  final String? token = jsonConvert.convert<String>(json['token']);
  if (token != null) {
    tokenEntity.token = token;
  }
  return tokenEntity;
}

Map<String, dynamic> $TokenEntityToJson(TokenEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['token'] = entity.token;
  return data;
}

extension TokenEntityExtension on TokenEntity {
  TokenEntity copyWith({
    String? token,
  }) {
    return TokenEntity()
      ..token = token ?? this.token;
  }
}