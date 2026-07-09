import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(title: Text('AbsorbPointer Example')),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AbsorbPointer(
                      absorbing: _isLoading,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Button Clicked')));
                        },
                        child: Text('Click Me'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      _isLoading ? 'Button is DISABLED' : 'Button is ENABLED',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoading = !_isLoading;
                        });
                      },
                      child: Text(_isLoading ? 'Enable Tap' : 'Disable Tap'),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}