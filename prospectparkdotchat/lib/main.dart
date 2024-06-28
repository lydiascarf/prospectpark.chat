import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:memories_app/core/core.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://nfhvnpxoecniyvpwgfdq.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5maHZucHhvZWNuaXl2cHdnZmRxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk1OTQ2NzIsImV4cCI6MjAzNTE3MDY3Mn0.lKTmTHFZWs2-X2mdT0TL2kofZZIKuuPgopbB_zo6erI',
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.read(routeProvider);
    return MaterialApp.router(
      title: 'Memories App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routerConfig: routes,
    );
  }
}
