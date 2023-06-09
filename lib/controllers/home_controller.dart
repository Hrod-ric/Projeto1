import 'package:projeto1/services/task_service.dart';

class HomeController {
  final TaskService _taskService;
  HomeController({required TaskService taskService}): _taskService = taskService;
  getTasks(){
    return _taskService.getTasks();
  }
}