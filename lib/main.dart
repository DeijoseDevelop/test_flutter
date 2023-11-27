import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talent_job_mobile/src/ui/routes/routes.dart';
import 'package:talent_job_mobile/src/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: Injector.dependencies, child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Talent Job App',
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppPages.routes,
    );
  }
}
