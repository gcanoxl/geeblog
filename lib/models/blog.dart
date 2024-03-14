import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  Blog();

  late String id;
  late String title;
  late String content;
  late String created_at;
  
  factory Blog.fromJson(Map<String,dynamic> json) => _$BlogFromJson(json);
  Map<String, dynamic> toJson() => _$BlogToJson(this);
}
