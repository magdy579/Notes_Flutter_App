import 'package:hive/hive.dart';
part 'NoteModel.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
});
}