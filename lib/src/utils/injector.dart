import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:talent_job_mobile/src/controllers/controllers.dart';

// this class take care of the inject dependencies globally
class Injector {
  static List<SingleChildWidget> dependencies = [
    ChangeNotifierProvider(create: (_) => UserController()),
  ];
}
