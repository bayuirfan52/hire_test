import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/response/detail_employee_entity.dart';

DetailEmployeeEntity $DetailEmployeeEntityFromJson(Map<String, dynamic> json) {
  final DetailEmployeeEntity detailEmployeeEntity = DetailEmployeeEntity();
  final DetailEmployeeData? data = jsonConvert.convert<DetailEmployeeData>(json['data']);
  if (data != null) {
    detailEmployeeEntity.data = data;
  }
  final DetailEmployeeSupport? support = jsonConvert.convert<DetailEmployeeSupport>(json['support']);
  if (support != null) {
    detailEmployeeEntity.support = support;
  }
  return detailEmployeeEntity;
}

Map<String, dynamic> $DetailEmployeeEntityToJson(DetailEmployeeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  data['support'] = entity.support?.toJson();
  return data;
}

extension DetailEmployeeEntityExtension on DetailEmployeeEntity {
  DetailEmployeeEntity copyWith({
    DetailEmployeeData? data,
    DetailEmployeeSupport? support,
  }) {
    return DetailEmployeeEntity()
      ..data = data ?? this.data
      ..support = support ?? this.support;
  }
}

DetailEmployeeData $DetailEmployeeDataFromJson(Map<String, dynamic> json) {
  final DetailEmployeeData detailEmployeeData = DetailEmployeeData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    detailEmployeeData.id = id;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    detailEmployeeData.email = email;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    detailEmployeeData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    detailEmployeeData.lastName = lastName;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    detailEmployeeData.avatar = avatar;
  }
  return detailEmployeeData;
}

Map<String, dynamic> $DetailEmployeeDataToJson(DetailEmployeeData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['email'] = entity.email;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['avatar'] = entity.avatar;
  return data;
}

extension DetailEmployeeDataExtension on DetailEmployeeData {
  DetailEmployeeData copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return DetailEmployeeData()
      ..id = id ?? this.id
      ..email = email ?? this.email
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..avatar = avatar ?? this.avatar;
  }
}

DetailEmployeeSupport $DetailEmployeeSupportFromJson(Map<String, dynamic> json) {
  final DetailEmployeeSupport detailEmployeeSupport = DetailEmployeeSupport();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    detailEmployeeSupport.url = url;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    detailEmployeeSupport.text = text;
  }
  return detailEmployeeSupport;
}

Map<String, dynamic> $DetailEmployeeSupportToJson(DetailEmployeeSupport entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['text'] = entity.text;
  return data;
}

extension DetailEmployeeSupportExtension on DetailEmployeeSupport {
  DetailEmployeeSupport copyWith({
    String? url,
    String? text,
  }) {
    return DetailEmployeeSupport()
      ..url = url ?? this.url
      ..text = text ?? this.text;
  }
}