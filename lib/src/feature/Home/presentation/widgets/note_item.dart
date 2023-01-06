import 'package:flutter/material.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

/// A single item (preview of a Note) in the Notes list.
class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) => Hero(
        tag: 'NoteItem${noteModel.id}',
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (noteModel.title.isNotEmpty) ...[
                Text(
                  noteModel.title,
                  maxLines: 1,
                ),
                const SizedBox(height: 14),
              ],
              Flexible(
                flex: 1,
                child: Text(
                  noteModel.description ?? '',
                ), // wrapping using a Flexible to avoid overflow
              ),
            ],
          ),
        ),
      );
}
