import 'package:hire_test/generated/json/base/json_convert_content.dart';
import 'package:hire_test/app/data/response/list_employee_entity.dart';

ListEmployeeEntity $ListEmployeeEntityFromJson(Map<String, dynamic> json) {
  final ListEmployeeEntity listEmployeeEntity = ListEmployeeEntity();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    listEmployeeEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    listEmployeeEntity.perPage = perPage;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    listEmployeeEntity.total = total;
  }
  final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
  if (totalPages != null) {
    listEmployeeEntity.totalPages = totalPages;
  }
  final List<ListEmployeeData>? data = (json['data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<ListEmployeeData>(e) as ListEmployeeData).toList();
  if (data != null) {
    listEmployeeEntity.data = data;
  }
  final ListEmployeeSupport? support = jsonConvert.convert<ListEmployeeSupport>(json['support']);
  if (support != null) {
    listEmployeeEntity.support = support;
  }
  return listEmployeeEntity;
}

Map<String, dynamic> $ListEmployeeEntityToJson(ListEmployeeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  data['total'] = entity.total;
  data['total_pages'] = entity.totalPages;
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  data['support'] = entity.support?.toJson();
  return data;
}

extension ListEmployeeEntityExtension on ListEmployeeEntity {
  ListEmployeeEntity copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<ListEmployeeData>? data,
    ListEmployeeSupport? support,
  }) {
    return ListEmployeeEntity()
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage
      ..total = total ?? this.total
      ..totalPages = totalPages ?? this.totalPages
      ..data = data ?? this.data
      ..support = support ?? this.support;
  }
}

ListEmployeeData $ListEmployeeDataFromJson(Map<String, dynamic> json) {
  final ListEmployeeData listEmployeeData = ListEmployeeData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    listEmployeeData.id = id;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    listEmployeeData.email = email;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    listEmployeeData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    listEmployeeData.lastName = lastName;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    listEmployeeData.avatar = avatar;
  }
  return listEmployeeData;
}

Map<String, dynamic> $ListEmployeeDataToJson(ListEmployeeData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['email'] = entity.email;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['avatar'] = entity.avatar;
  return data;
}

extension ListEmployeeDataExtension on ListEmployeeData {
  ListEmployeeData copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return ListEmployeeData()
      ..id = id ?? this.id
      ..email = email ?? this.email
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..avatar = avatar ?? this.avatar;
  }
}

ListEmployeeSupport $ListEmployeeSupportFromJson(Map<String, dynamic> json) {
  final ListEmployeeSupport listEmployeeSupport = ListEmployeeSupport();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    listEmployeeSupport.url = url;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    listEmployeeSupport.text = text;
  }
  return listEmployeeSupport;
}

Map<String, dynamic> $ListEmployeeSupportToJson(ListEmployeeSupport entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['text'] = entity.text;
  return data;
}

extension ListEmployeeSupportExtension on ListEmployeeSupport {
  ListEmployeeSupport copyWith({
    String? url,
    String? text,
  }) {
    return ListEmployeeSupport()
      ..url = url ?? this.url
      ..text = text ?? this.text;
  }
}