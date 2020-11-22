import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const routeName = '/error_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error')),
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}
