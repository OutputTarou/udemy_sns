// flutter
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:udemy_flutter_sns/views/singup_page.dart';
// models
import 'main_model.dart';
// options
import 'firebase_options.dart';
// constants
import 'package:udemy_flutter_sns/constants/routes.dart' as routes;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainModel mainModel = ref.watch(mainProvider);
    final User? onceUser = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: mainModel.currentUser == null
          ? SignupPage()
          : const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () => routes.toSignupPage(context: context),
                child: const Text("サインアップページ")),
            ElevatedButton(
                onPressed: () => routes.toLoginPage(context: context),
                child: const Text("ログインページ")),
            Text('Nullです')
          ],
        )));
  }
}
