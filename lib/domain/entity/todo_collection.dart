import 'package:todo_app/domain/entity/collection_id.dart';
import 'package:todo_app/domain/entity/todo_color.dart';

class TodoCollection {
  final CollectionId id;
  final String title;
  final TodoColor color;

  TodoCollection({
    required this.id,
    required this.title,
    required this.color,
  });

  factory TodoCollection.empty() {
    return TodoCollection(
      id: CollectionId(),
      title: '',
      color: TodoColor(colorIndex: 0),
    );
  }
}
