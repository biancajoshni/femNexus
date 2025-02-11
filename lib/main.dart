import 'package:firebaseapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'blocs/bloc_exports.dart';
import 'services/app_router.dart';
import 'services/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

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
            title: 'FemHealth App',
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
    // Example cycle values; update as needed
    double meanCycleLength = 28.0;
    double cycleLength = 30.0;

    String result =
        await ApiService.predictMenstrualCycle(meanCycleLength, cycleLength);
    setState(() {
      _periodDate = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Health App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _predictPCOS,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text("Check PCOS",
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            Text("PCOS Result: $_pcosResult",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _predictPeriod,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: const Text("Predict Period",
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            Text("Next Period: $_periodDate",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
