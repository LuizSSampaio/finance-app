import 'package:flutter/material.dart';

class CreationPage extends StatelessWidget {
  const CreationPage({Key? key}) : super(key: key);

  static const String routeName = '/create';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Creation Page'),
        ),
      ),
    );
  }
}
