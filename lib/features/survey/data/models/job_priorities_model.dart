// To parse this JSON data, do
//
//     final jobPrioritiesModel = jobPrioritiesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'job_priorities_model.freezed.dart';
part 'job_priorities_model.g.dart';

List<JobPrioritiesModel> jobPrioritiesModelFromJson(String str) => List<JobPrioritiesModel>.from(json.decode(str).map((x) => JobPrioritiesModel.fromJson(x)));

String jobPrioritiesModelToJson(List<JobPrioritiesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JobPrioritiesModel with _$JobPrioritiesModel {
    const factory JobPrioritiesModel({
        int? id,
        String? slug,
        String? name,
    }) = _JobPrioritiesModel;

    factory JobPrioritiesModel.fromJson(Map<String, dynamic> json) => _$JobPrioritiesModelFromJson(json);
}
