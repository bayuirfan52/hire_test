import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/response/error_entity.dart';

ErrorEntity $ErrorEntityFromJson(Map<String, dynamic> json) {
  final ErrorEntity errorEntity = ErrorEntity();
  final String? error = jsonConvert.convert<String>(json['error']);
  if (error != null) {
    errorEntity.error = error;
  }
  return errorEntity;
}

Map<String, dynamic> $ErrorEntityToJson(ErrorEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['error'] = entity.error;
  return data;
}

extension ErrorEntityExtension on ErrorEntity {
  ErrorEntity copyWith({
    String? error,
  }) {
    return ErrorEntity()
      ..error = error ?? this.error;
  }
}