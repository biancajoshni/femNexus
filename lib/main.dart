import 'package:firebaseapp/screens/login_screen.dart';
import 'package:firebaseapp/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'blocs/bloc_exports.dart';
import 'screens/tabs_screen.dart';
import 'services/app_router.dart';
import 'services/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TasksBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
      ],
      child: BlocBuilder<SwitchBloc, SwitchState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Tasks App',
            theme: state.switchValue
                ? AppThemes.appThemeData[AppTheme.darkTheme]
                : AppThemes.appThemeData[AppTheme.lightTheme],
            home: const LoginScreen(),
            onGenerateRoute: appRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _pcosResult = "";
  String _periodDate = "";

  void _predictPCOS() async {
    List<double> features = [1.0, 2.5, 3.0, 4.2]; // Sample input values
    String result = await ApiService.predictPCOS(features);
    setState(() {
      _pcosResult = result;
    });
  }

  void _predictPeriod() async {
    String result = await ApiService.predictPeriod("2025-02-01");
    setState(() {
      _periodDate = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Health App")),
      body: Column(
        children: [
          ElevatedButton(onPressed: _predictPCOS, child: Text("Check PCOS")),
          Text("PCOS Result: $_pcosResult"),
          ElevatedButton(onPressed: _predictPeriod, child: Text("Predict Period")),
          Text("Next Period: $_periodDate"),
        ],
      ),
    );
  }
}
