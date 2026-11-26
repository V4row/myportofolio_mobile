import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Experience {
  const Experience({
    this.id,
    required this.title,
    required this.description,
    this.category = 'full-time',
    this.thumbnail,
    required this.startedAt,
    this.endedAt,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  final String category;

  @JsonKey(defaultValue: null)
  final String? thumbnail;

  final DateTime startedAt;

  @JsonKey(defaultValue: null)
  final DateTime? endedAt;

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}
