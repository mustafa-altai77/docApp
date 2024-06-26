// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsResponse _$DoctorsResponseFromJson(Map<String, dynamic> json) =>
    DoctorsResponse(
      message: json['message'] as String?,
      doctorsList: (json['data'] as List<dynamic>?)
          ?.map((e) => AllDoctors.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$DoctorsResponseToJson(DoctorsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.doctorsList,
      'status': instance.status,
      'code': instance.code,
    };

AllDoctors _$AllDoctorsFromJson(Map<String, dynamic> json) => AllDoctors(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      degree: json['degree'] as String?,
      specialization: json['specialization'] == null
          ? null
          : Specialization.fromJson(
              json['specialization'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      appointPrice: json['appointPrice'] as int?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$AllDoctorsToJson(AllDoctors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'city': instance.city,
      'appointPrice': instance.appointPrice,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int?,
      name: json['name'] as String?,
      governrate: json['governrate'] == null
          ? null
          : Specialization.fromJson(json['governrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };
