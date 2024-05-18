// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponse _$SpecializationResponseFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponse(
      allData: (json['data'] as List<dynamic>?)
          ?.map((e) => AllData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseToJson(
        SpecializationResponse instance) =>
    <String, dynamic>{
      'data': instance.allData,
    };

AllData _$AllDataFromJson(Map<String, dynamic> json) => AllData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      doctors: (json['doctors'] as List<dynamic>?)
          ?.map((e) => Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllDataToJson(AllData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
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
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
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
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
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
