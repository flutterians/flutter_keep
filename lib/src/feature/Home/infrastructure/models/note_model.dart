import 'package:flutter_keep/src/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  @HiveType(typeId: notesBoxId, adapterName: notesBoxAdapter)
  const factory NoteModel({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) String? description,
  }) = _NoteModel;
  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
