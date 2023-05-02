import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBar, MaterialApp, Scaffold, Theme;

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cupertinoOverrideTheme: const CupertinoThemeData(
          brightness: Brightness.light,
        ),
      ),
      child: const PlatformApp(),
    );
  }
}

class PlatformApp extends StatelessWidget {
  const PlatformApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return const CupertinoApp(
        home: MyHomePage(),
      );
    } else {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Despesas Pessoais'),
          ),
          body: const Center(
            child: Text(
              'Versão Inicial'
              ),
          ),
        ),
      );
    }
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Despesas Pessoais'),
      ),
      child: Center(
        child: Text('Versão Inicial'),
      ),
    );
  }
}
