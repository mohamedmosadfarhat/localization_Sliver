import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loc_slver_amit/generated/l10n.dart';
import 'package:intl/intl.dart';
import 'package:loc_slver_amit/sliverPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("en"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // localization Page
      //home: HomePage(),
      home: SliverPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(S.of(context).title),
      ),
      body: Row(
        children: [
          Text(S.of(context).body),
          Padding(
            padding: grtLoval()
                ? const EdgeInsets.only(right: 8.0)
                : const EdgeInsets.only(left: 8.0),
            child: Text(S.of(context).name),
          ),
        ],
      ),
    );
  }
}

bool grtLoval() {
  return Intl.getCurrentLocale() == "ar";
}
