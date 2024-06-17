import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_passwords_app/bloc/local_bloc/core/local_bloc.dart';
import 'package:store_passwords_app/bloc/local_bloc/models/resource.dart';
import 'package:store_passwords_app/bloc/local_bloc/repo/hive_database.dart';
import 'package:store_passwords_app/bloc/local_bloc/repo/hive_repository.dart';
import 'package:store_passwords_app/bloc/user_bloc/core/user_bloc.dart';
import 'package:store_passwords_app/bloc/user_bloc/repo/user_storage_repo.dart';
import 'package:store_passwords_app/bloc/user_bloc/repo/user_data_storage.dart';
import 'package:store_passwords_app/ui/pages/auth_screen.dart';
import 'package:store_passwords_app/ui/pages/home_screen.dart';
import 'package:store_passwords_app/ui/pages/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter<Resource>(ResourceAdapter());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc(repo: UserStorageRepo(db: UserDataStorage()))..add(const UserEvents.checkOfflineStatus())),
        BlocProvider(create: (context) => LocalBloc(repo: LocalRepo(DatabaseService())))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthScreen(),
          '/register':(context) => const RegistrationScreen(),
          '/home':(context) => const HomeScreen()
        }
      ),
    );
  }
}