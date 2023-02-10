import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const picker = CountryPicker(
    onSelect: print,
    chosen: [CountryAfg(), CountryAla(), CountryDza()],
    disabled: [CountryAfg(), CountryAlb()],
  );

  void onPressed() async {
    final country = await picker.showInModalBottomSheet(context);
    if (country == null) return debugPrint('No country selected.');
    debugPrint('Selected country: ${country.name.common}.');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const SafeArea(child: picker),
        floatingActionButton: FloatingActionButton(
          onPressed: onPressed,
        ),
      );
}
