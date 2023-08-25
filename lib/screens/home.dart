import 'package:flutter/material.dart';
import '../components/card.dart';
import '../components/recentTransactions.dart';
import '../components/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Appbar(),
          CardsList(),
          const RecentTransactions(),
        ],
      ),
    );
  }
}
