import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/request/login_entity.dart';

LoginEntity $LoginEntityFromJson(Map<String, dynamic> json) {
  final LoginEntity loginEntity = LoginEntity();
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    loginEntity.email = email;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    loginEntity.password = password;
  }
  return loginEntity;
}

Map<String, dynamic> $LoginEntityToJson(LoginEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['email'] = entity.email;
  data['password'] = entity.password;
  return data;
}

extension LoginEntityExtension on LoginEntity {
  LoginEntity copyWith({
    String? email,
    String? password,
  }) {
    return LoginEntity()
      ..email = email ?? this.email
      ..password = password ?? this.password;
  }
}