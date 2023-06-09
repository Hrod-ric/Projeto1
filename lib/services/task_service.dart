import 'package:projeto1/services/category_service.dart';

import '../models/category_model.dart';
import '../models/task_model.dart';

class TaskService {
  final CategoryService _categoryService;
  TaskService({required CategoryService categoryService}): _categoryService = categoryService;

  /// Classe responsavel por interagir com a fonte dos dados
  List<Task> getTasks(){
    return List.generate(
      4,
      (index) {
        final categories = _categoryService;
        return Task(
        title: 'Texto $index',
        description: 'Falta ${index * 2} dias',
        category: categories[index % categories.length],
        finished: index.isEven,
        );
      }
    );
  }
}