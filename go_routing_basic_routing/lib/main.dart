import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() =>
  runApp( const MyApp());


final  _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => DetailScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'go_router Lesson 1',
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/details');
          },
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
    const DetailScreen({super.key}); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(child: Text('This is Detail Screen')),
    );
  }
}