import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fancy_switch/fancy_switch.dart';
import './providers/global_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => GlobalProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<GlobalProvider>(context).darkMode
          ? ThemeData.dark()
          : ThemeData(
              primarySwatch: Colors.cyan,
            ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GlobalProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FancySwitch(
              value: provider.darkMode,
              onChanged: provider.toggleDarkMode,
              height: 100,
              activeModeBackgroundImage: 'assets/images/dark_bg.png',
              inactiveModeBackgroundImage: 'assets/images/light_bg.png',
              activeThumbImage: Image.asset('assets/images/moon.png'),
              inactiveThumbImage: Image.asset('assets/images/sun.png'),
              activeThumbColor: Colors.purple,
              inactiveThumbColor: Colors.orange,
            ),
            FancySwitch(
              value: provider.darkMode,
              onChanged: provider.toggleDarkMode,
              height: 100,
              activeModeBackgroundImage: 'assets/images/dark_bg.png',
              inactiveModeBackgroundImage: 'assets/images/light_bg.png',
              activeThumbImage: Image.asset('assets/images/moon.png'),
              inactiveThumbImage: Image.asset('assets/images/sun.png'),
            ),
            FancySwitch(
              value: provider.darkMode,
              onChanged: provider.toggleDarkMode,
              height: 100,
              activeModeBackgroundImage: 'assets/images/dark_bg.png',
              inactiveModeBackgroundImage: 'assets/images/light_bg.png',
              activeThumbColor: Colors.purple,
              inactiveThumbColor: Colors.orange,
            ),
            FancySwitch(
              value: provider.darkMode,
              onChanged: provider.toggleDarkMode,
              height: 100,
              activeModeBackgroundImage: 'assets/images/dark_bg.png',
              inactiveModeBackgroundImage: 'assets/images/light_bg.png',
            ),
          ],
        ),
      ),
    );
  }
}
