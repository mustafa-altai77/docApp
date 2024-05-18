import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctors_response.g.dart';
@JsonSerializable()
class DoctorsResponse{
  String? message;
  @JsonKey(name: "data")
  List<AllDoctors>? doctorsList;
  bool? status;
  int? code;
  DoctorsResponse({this.message, this.doctorsList, this.status, this.code});
  factory DoctorsResponse.fromJson(Map<String,dynamic> json)=>
     _$DoctorsResponseFromJson(json);
}
@JsonSerializable()
class AllDoctors{
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  AllDoctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});
  factory AllDoctors.fromJson(Map<String,dynamic> json)=>
      _$AllDoctorsFromJson(json);
}
@JsonSerializable()
class Specialization{
  int? id;
  String? name;

  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String,dynamic> json)=>
      _$SpecializationFromJson(json);
}
@JsonSerializable()
class City{
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
  factory City.fromJson(Map<String,dynamic> json)=>
      _$CityFromJson(json);
}