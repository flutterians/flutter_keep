import 'package:freezed_annotation/freezed_annotation.dart';
part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required int id,
    required String title,
    String? description,
  }) = _NoteModel;
  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
