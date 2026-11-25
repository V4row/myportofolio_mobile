import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    this.id,
    required this.title,
    required this.description,
    this.techStack = '',
    required this.projectUrl,
    this.projectImageUrl = '',
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;

  @JsonKey(defaultValue: '')
  final String techStack;

  @JsonKey(name: 'url')
  final String projectUrl;

  @JsonKey(name: 'thumbnail', defaultValue: '')
  final String projectImageUrl;

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
