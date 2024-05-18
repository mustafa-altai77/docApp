import 'package:json_annotation/json_annotation.dart';
part 'specialization_response.g.dart';

@JsonSerializable()
class SpecializationResponse {
  @JsonKey(name: "data")
  List<AllData>? allData;

  SpecializationResponse({ this.allData});

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseFromJson(json);
}

@JsonSerializable()
class AllData {
  int? id;
  String? name;
  List<Doctors>? doctors;

  AllData({this.id, this.name, this.doctors});
  factory AllData.fromJson(Map<String,dynamic> json)=> _$AllDataFromJson(json);
}

@JsonSerializable()
class Doctors {
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
  DateTime? startTime;
  DateTime? endTime;


  Doctors(
  {
      this.id,
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
  factory Doctors.fromJson(Map<String,dynamic> json)=> _$DoctorsFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String,dynamic> json)=> _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
  factory City.fromJson(Map<String,dynamic> json)=> _$CityFromJson(json);
}
